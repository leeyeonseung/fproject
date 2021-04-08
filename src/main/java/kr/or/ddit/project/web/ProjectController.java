package kr.or.ddit.project.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.ProjectVo;
import kr.or.ddit.project.service.ProjectService;
import kr.or.ddit.user.model.UsersVo;

@RequestMapping("project")
@Controller
public class ProjectController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Resource(name = "projectService")
	public ProjectService projectService;
	
	@RequestMapping("projectpick")
	public String projectpick(Model model, HttpSession session) {
		UsersVo user = (UsersVo)session.getAttribute("S_USER");
		
		List<ProjectVo>proList= projectService.selectAllpro(user.getUsid());
		logger.debug("prolist : {}", proList);
		
		model.addAttribute("prolist",proList);
		return"pms_col/projectpick";
	}
	@RequestMapping("projectpick2")
	public String projectpick2(Model model, HttpSession session) {
		
		UsersVo user = (UsersVo)session.getAttribute("S_USER");
		
		String prjctno = (String)session.getAttribute("prjctno");
		String usernm = user.getUsernm();
		
		List<ProjectVo>invitelist2=projectService.invitelist2(prjctno);
		List<ProjectVo>proList= projectService.selectAllpro(user.getUsid());
		
		logger.debug("prolist : {}", proList);
		model.addAttribute("invitelist2",invitelist2);
		model.addAttribute("prolist",proList);
		return"pms_col/invitepick";
	}
	
	@RequestMapping("projectMain")
	public String projectMain(HttpSession session,String prjctno) {
		session.setAttribute("prjctno", prjctno);
		logger.debug("prjctno : {}",prjctno);
		return "tiles.pms_col.ysl2";
	}
	
	//프로젝트 생성 1일때 활성 2일때 비활성
	@RequestMapping("registproject")
	public String registproject(ProjectVo projectvo, HttpSession session) {
		
		UsersVo user = (UsersVo)session.getAttribute("S_USER");
		MemberVo membervo = new MemberVo();
		membervo.setUsid(user.getUsid());
		membervo.setUsernm(user.getUsernm());
		logger.debug("projectvo:{}",projectvo);
		
		int insertCnt = 0;
		int insertmemCnt = 0;
		try {
			insertCnt= projectService.registproject(projectvo);
			insertmemCnt = projectService.insertmember(membervo);
		} catch (Exception e) {
			insertCnt = 0;
			insertmemCnt = 0;
			e.printStackTrace();
		}
		
		if (insertCnt == 1 && insertmemCnt == 1) {
			logger.debug("사용자 등록 성공 insertCnt 값:{}",insertCnt );
			return "redirect:/project/projectpick";
		}
		else {
			logger.debug("사용자 등록 실패 insertCnt 값:{}",insertCnt );
			
			return "redirect:/project/projectpick";
		}
	}
	
	@RequestMapping("complateproject")
	public String complateproject(Model model, HttpSession session) {
		UsersVo user = (UsersVo)session.getAttribute("S_USER");
		
		List<ProjectVo>proList= projectService.selectcomplatepro(user.getUsid());
		
		model.addAttribute("prolist1",proList);
		return"pms_col/complateproject";
	}
	
	@RequestMapping("recyclebin")
	public String recyclebin(Model model, HttpSession session) {
		UsersVo user = (UsersVo)session.getAttribute("S_USER");
		
		List<ProjectVo>proList = projectService.recyclebin(user.getUsid());
		
		model.addAttribute("prolist2",proList);
		return "pms_col/recyclebin";
	}
	
	@RequestMapping("deleterecycle")
	public String deleterecycle(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {
			updateCnt = projectService.deleterecycle(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/projectpick";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt);
			
			return "redirect:/project/projectpick";
		}
	}
	
	@RequestMapping("completepro")
	public String completepro(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.completepro(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/projectpick";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/projectpick";
		}
	}
	
	@RequestMapping("modifybtnpro")
	public String modifybtnpro(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.modifybtnpro(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/complateproject";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/complateproject";	
		}
	}
	
	@RequestMapping("restorepro")
	public String restorepro(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.restorepro(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/recyclebin";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/recyclebin";	
		}
	}
	
	// 즐겨찾기 추가삭제 projectpick, complateproject.jsp
	// 0일때 즐겨찾기 비활성 1일때 즐겨찾기 활성 
	@RequestMapping("favoritepro")
	public String favoritepro(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.favoritepro(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/complateproject";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/complateproject";		
		}
	}
	
	@RequestMapping("favoritepro2")
	public String favoritepro2(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.favoritepro(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/projectpick";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/projectpick";		
		}
	}
	
	@RequestMapping("favorite")
	public String favorite(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.favorite(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/complateproject";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/complateproject";		
		}
	}
	
	@RequestMapping("favorite2")
	public String favorite2(ProjectVo projectvo) {
		int updateCnt=0;
		
		try {	
			updateCnt = projectService.favorite(projectvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (updateCnt== 1) {
			logger.debug("성공 updateCnt 값:{}",updateCnt);
			return "redirect:/project/projectpick";
		}
		else {
			logger.debug("실패 updateCnt 값:{}",updateCnt );
			
			return "redirect:/project/projectpick";		
		}
	}
	
	@RequestMapping("deleteproject")
	public String deleteproject(String prjctno,Model model) {
		model.addAttribute("prjctno",projectService.deleteproject(prjctno));
		return "redirect:/project/projectpick";
	}
}
