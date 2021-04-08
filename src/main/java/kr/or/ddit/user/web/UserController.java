package kr.or.ddit.user.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.user.model.UsersVo;
import kr.or.ddit.user.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name = "userService")
	public UserService userService;
	
	//메인화면
	@RequestMapping("mainview")
	public String main() {
		return "pms_col/main";
	}

	// 로그인 화면
	@RequestMapping("loginview")
	public String loginView() {
		return "pms_col/login";
	}
		
	@RequestMapping("loginviewtwo")
	public String loginView2() {
		return "pms_col/inviteLogin";
	}
	
	//로그인 다음 화면	
	@RequestMapping(path = "jlogining", method = { RequestMethod.POST })
	public String loginNext(HttpSession session, Model model, String usid, String password) {
		UsersVo userVo = new UsersVo();
		userVo.setUsid(usid);
		userVo.setPassword(password);
		logger.debug("usid :{}", usid);
		logger.debug("vo :{}", userVo);

		UsersVo vo = userService.selectAllUser(userVo.getUsid());
		logger.debug("voaaaaaa :{}", vo);

		String fail = "fail";
		if (vo != null && userVo.getPassword().equals(vo.getPassword())) {
			session.setAttribute("S_USER", vo);
			return "jsonView";
		} else {
			logger.debug("로그인 실패");
			model.addAttribute("result", fail);
			return "jsonView";
		}
	}
		
//	마이페이지
	@RequestMapping(path = "jmypage", method = { RequestMethod.GET })
	public String mypageView(Model model, HttpSession session) {

//		UsersVo userVo = (UsersVo) session.getAttribute("S_USER");
//		
//		model.addAttribute("userVo", userVo);

		return "pms_col/mypage";
	}
	
	// 마이페이지 이름 수정
	@RequestMapping(path = "nmedit", method = { RequestMethod.POST })
	public String nameedit(String usid, String usernm, Model model) {

		UsersVo userVo = new UsersVo();
		userVo.setUsid(usid);
		userVo.setUsernm(usernm);

		logger.debug("userVo : {}", userVo);

		int cnt = userService.updateUsernm(userVo);

		String user = "";
		if (cnt == 1) {
			user = userVo.getUsernm();
		}
		model.addAttribute("user", user);

		logger.debug("cnt : {}", cnt);

		return "jsonView";
	}
	
	// 마이페이지 전화번호 수정
	@RequestMapping(path = "teledit", method = { RequestMethod.POST })
	public String teleditView(String usid, String telno, Model model) {

		UsersVo userVo = new UsersVo();
		userVo.setUsid(usid);
		userVo.setTelno(telno);

		int cnt = 0;

		cnt = userService.updateUsertelno(userVo);

		String tel = "";
		if (cnt == 1) {
			tel = userVo.getTelno();
			model.addAttribute("tel", tel);
		}

		return "jsonView";
	}
	
	//마이페이지에서 비밀번호 변경
	@RequestMapping(path = "passchange", method = { RequestMethod.POST })
	public String PassChange(HttpSession session, String password, Model model) {
		UsersVo userVo = (UsersVo) session.getAttribute("S_USER");
		userVo.setPassword(password);

		int cnt = 0;
		String sw = "";
		cnt = userService.changePass(userVo);

		if (cnt == 1) {
			sw = "success";
		} else {
			sw = "fail";
		}
		model.addAttribute("sw", sw);

		return "jsonView";
	}
		
	// 회원 가입 화면 뷰
	@RequestMapping(path="joinView")
	public String JoinView() {
		return "pms_col/signup";
	}
		
	//회원가입 폼 전송 받는 곳
	@RequestMapping(path="join", method= {RequestMethod.POST})
	public String Join(UsersVo userVo, String p_no1, String p_no2, String p_no3, String brthday) {
		
		userVo.setTelno(p_no1+"-"+p_no2+"-"+p_no3);
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date bir = null;
		try {
			bir = transFormat.parse(brthday);
			userVo.setBrthdy(bir);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
				
		logger.debug("userVo : {}", userVo);
		int cnt = 0;
		
		try{
			cnt = userService.insertUser(userVo);
		}catch(Exception e) {
			e.printStackTrace();
			cnt=0;
		}
		 
		if(cnt == 1) {
			return "pms_col/mypage";	//프로젝트생성페이지로
		}else {
			return "pms_col/signup";
		}
		
	}
		
	//아이디 중복확인
	@RequestMapping(path="idcheck", method = {RequestMethod.POST})
	public String IdCheck(Model model, String usid) {

		logger.debug("usid : {} " , usid);
		String sw ="";
		try {
			UsersVo userVo = userService.selectAllUser(usid);
			String userid = userVo.getUsid();
			
				if(userid != null) {
					sw = "이미 사용중인 아이디 입니다";
				}
				model.addAttribute("sw", sw);
		}catch(Exception e) {
			e.printStackTrace();
			sw = "사용 가능한 아이디입니다";
			model.addAttribute("sw", sw);
			
		}
		
		return "jsonView";
	}
	
	// 핸드폰 문자 인증
	@RequestMapping(path = "smsSend", method = { RequestMethod.POST })
	public String authSms(Model model, String pno, String usernm, HttpSession session) throws Exception {

		logger.debug(pno);
		logger.debug(usernm);

		UsersVo user = userService.compareUser(usernm);

		// String userTel = user.getTelno().replace("-", "");
		String userTel = user.getTelno();
		logger.debug("저장된 전화번호 : {}", userTel);

		String[] array = userTel.split("-");

		String tempTel = "";
		for (int i = 0; i < array.length; i++) {
			tempTel += array[i];
		}

		String sw = "";
		if (tempTel.equals(pno)) {
			logger.debug("전화번호가 같습니다");

			int ran =  (int) (Math.floor((Math.random() *(1000000-100000) + 100000)));
			logger.debug("인증코드 값:{}", Integer.toString(ran));
//
//				String api_key = "NCSPNXIYRDGIXK8S";
//				String api_secret = "BDC9AQY4KYZNXBJYSNVDBTWRUXDPPQQT";
//				Message coolsms = new Message(api_key, api_secret);
//
//				HashMap<String, String> map = new HashMap<String, String>();
//				map.put("to", pno);
//				map.put("from", "01024158653");
//				map.put("type", "SMS");
//				map.put("text", "27AGE 회원가입 인증 번호는 [" + (Integer.toString(ran)) + "] 입니다.");
//				map.put("app_version", "test app 1.2"); // application name and version
//				logger.debug("수신 번호 :  {}", pno);
//
//				JSONObject obj = (JSONObject) coolsms.send(map);
//
//				logger.debug("메세지 결과물 :{}", obj.toString());

			session.setAttribute("random", Integer.toString(ran));
			session.setAttribute("user", user);

			sw = "same";
			model.addAttribute("sw", sw);

		} else {
			logger.debug("전화번호 다름");
			sw = "diffrent";
			model.addAttribute("sw", sw);
		}

		return "jsonView";
	}
	
	// 인증번호 비교 후 아이디 찾기
	@RequestMapping(path = "idHere", method = { RequestMethod.POST })
	public String idGet(HttpSession session, Model model, String authno) {
		String ran = (String) session.getAttribute("random");
		UsersVo user = (UsersVo) session.getAttribute("user");
		// 사용후 session remove
		logger.debug("랜덤 숫자: {}", ran);
		logger.debug("입력한 숫자: {}", authno);
		String usid = "";
		String fail = "";
		if (ran.equals(authno)) {
			usid = userService.findUserId(user.getTelno());

			model.addAttribute("usid", usid);
			session.removeAttribute("random");
			session.removeAttribute("user");
		} else {
			fail = "인증번호가 다릅니다";
			model.addAttribute("fail", fail);
		}

		return "jsonView";
	}
	
	//비밀번호 찾기 임시 비밀번호 발급
	@RequestMapping(path="transferPass", method= {RequestMethod.POST}, produces = "application/json")
	public String transPass(String email, HttpSession session, Model model) {
		
		logger.debug("사용자가 입력한 이메일 : {}", email);
		
		String findE = userService.findEmail(email);

		String res = "";
		if(findE != null) {
			
			String ranPass = "";
			Random random = new Random();
			for(int i=0; i<8; i++) {
				int cube = random.nextInt(3);
				switch(cube) {
				case 0: 
					char lower = (char)((int)(Math.random()*25) +97);
					ranPass += lower;
					break;
				case 1: 
					char upper = (char)((int)(Math.random()*25) + 65);
					ranPass += upper;
					break;
				case 2: 
					char number = (char)((int)(Math.random()*10) + 48);
					ranPass += number;
					break;
				default:
					break;
					
				}				
			}			
			logger.debug("랜덤 임시 비밀번호 : {}",ranPass);
			String subject = "27Age 임시 비밀번호는" + ranPass + "입니다.";
			StringBuffer sb = new StringBuffer();
			sb.append("귀하의 임시 비밀번호는 " + ranPass + "입니다");

			userService.send(subject, sb.toString(), "immense3@gmail.com", email, null);
						
			//임시 비밀번호를 회원 비밀번호로 업데이트
			UsersVo userVo = new UsersVo();
			userVo.setEmail(email);
			userVo.setPassword(ranPass);
			
			userService.tempPass(userVo);
			
			res = "Exist";
			model.addAttribute("res", res);
			
			return "jsonView";
		}else{
			res = "notExist";
			model.addAttribute("res", res);
			return "jsonView";
		}
		
	}
	
	// 회원가입 이메일 인증
	@RequestMapping(path = "sendMail", method = { RequestMethod.POST }, produces = "application/json")
	public String SendMailAuth(HttpSession session, String email) {

		int ran = new Random().nextInt(100000) + 10000;
		String joinCode = String.valueOf(ran);

		String subject = "27Age 회원가입 인증 코드는" + joinCode + "입니다";
		StringBuffer sb = new StringBuffer();
		sb.append("귀하의 인증코드는 " + joinCode + "입니다");

		userService.send(subject, sb.toString(), "immense3@gmail.com", email, null);
		session.setAttribute("joinCode", joinCode);

		return "jsonView";

//			return "pms_col/JYHjoin";
		// ajax 써야됨
		// session에 저장된 joinCode값을 가져와서 jsp에서 비교한다
		// join_check.js에서 구현된 메소드가 모두 참일 때 회원가입 성공
	}
	
	// 이메일 인증코드 비교
	@RequestMapping(path = "checkcode", method = { RequestMethod.POST })
	public String checkCode(HttpSession session, String code, Model model) {

		String jcode = (String) session.getAttribute("joinCode");
		logger.debug("jcode : {}", jcode);
		logger.debug("내가 입력한 코드값 : {}", code);

		String result = "";
		if (jcode.equals(code)) {
			result = "true";
			session.setAttribute("result", result);
		} else {
			result = "false";
			session.setAttribute("result", result);
		}
		model.addAttribute("result", result);
		return "jsonView";

	}
	
	// 로그아웃
	@RequestMapping("jlogout")
	public String logOut(HttpSession session) {

		Object object = session.getAttribute("S_USER");

		if (object != null) {

			session.removeAttribute("S_USER");
			session.invalidate();
		}

		return "pms_col/main";
	}
	
}
