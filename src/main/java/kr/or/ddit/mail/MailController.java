package kr.or.ddit.mail;

import javax.mail.Address;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.user.model.UsersVo;

@Controller

public class MailController {
	private static final Logger logger = LoggerFactory.getLogger(MailController.class);

	@Autowired
	private JavaMailSender mailSender;
	// mailSending 코드
	
	@RequestMapping(path = "mailSending.do" ,method = RequestMethod.POST)
		public String mailSending(HttpServletRequest request, HttpSession session) throws AddressException {
			String tomail = request.getParameter("tomail"); // 받는 사람 이메일	
			String[] array = tomail.split(",");
			String prjctno = (String)session.getAttribute("prjctno");
			UsersVo uservo =  (UsersVo)session.getAttribute("S_USER");
			String usernm = uservo.getUsernm();
			
			
			for(int i =0;i<array.length;i++) {
			String url = request.getRequestURI();
			String urlb = "http://192.168.0.131/invite/invite?prjctno="+prjctno+"&usernm="+usernm;
			String setfrom = "kk109608@gmail.com";
			String title = request.getParameter("title"); // 제목
			String content = request.getParameter("content"); // 내용
			
			logger.debug("받는사람이메일", tomail);
			logger.debug("제목", title);
			logger.debug("내용", content);
			
		
			
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(array); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(urlb); // 메일 내용
				System.out.println(urlb);
				
				mailSender.send(message);
				logger.debug("메세지 성공", message);
			} catch (Exception e) {
				logger.debug("전송 실패", e);
				System.out.println(e);
			}
			}
			return "redirect:/project/projectMain?prjctno="+prjctno;
		}	
		
		 @RequestMapping("mail") 
		 public String mail() {
			 
			 return "mail/mail";
			}
		 
		
}
