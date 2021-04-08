package kr.or.ddit.notice.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.NoticeVo;
import kr.or.ddit.model.PageVo;
import kr.or.ddit.notice.service.NoticeService;

@RequestMapping("notice")
@Controller
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	
	@Resource(name = "noticeService")
	public NoticeService noticeService;
	/*
	@RequestMapping("pagingNotice")
	public String noticeList(Model model, HttpSession session,
								@RequestParam(defaultValue = "1") int page, 
								@RequestParam(defaultValue = "5") int pageSize
			) {
		String prjctno = "PJ2103004"; // 츠로젝트 번호 session으로 받아오기
		
		PageVo pageVo = new PageVo(page, pageSize);
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("prjctno", prjctno);
		paramMap.put("pageVo", pageVo);
		paramMap.put("page", page);
		paramMap.put("pageSize", pageSize);
		model.addAllAttributes(noticeService.selectPagingNotice(paramMap));
		
		
		
		return "pms_col/notice_list";
	}
	*/
	// pageVo 에 prjctno 번호 포함 
	@RequestMapping("pagingNotice")
	public String noticeList(Model model, HttpSession session,
			@RequestParam(defaultValue = "1") int page, 
			@RequestParam(defaultValue = "5") int pageSize
			) {
		String prjctno = "PJ2103004"; // 프로젝트 번호 session으로 받아오기
		String usid = "test1";		// member 아이디
		// 세션값 설정
		session.setAttribute("prjctno", prjctno);
		session.setAttribute("usid", usid);
		
		logger.debug("세션 usid : {}",  usid);
		
		PageVo pageVo = new PageVo();
		pageVo.setPage(page);
		pageVo.setPageSize(pageSize);
		pageVo.setPrjctno(prjctno);
		
		// 권한 값에 따라 버튼 보여주기
		MemberVo member = new MemberVo(); 
		member.setPrjctno(prjctno);
		member.setUsid(usid);
		String author = noticeService.selectAuthor(member);
		model.addAttribute("author", author);

		model.addAllAttributes(noticeService.selectPagingNotice(pageVo));
		
		return "tiles.pms_col.notice_list";
	}
	
	// 공지사항 게시글 상세보기
	@RequestMapping("noticeDetail")
	public String noticeDetail(Model model, String sntncno, HttpSession session) {
		logger.debug("sntncno : {}" ,sntncno);

		String prjctno = (String) session.getAttribute("prjctno");
		String usid = (String) session.getAttribute("usid");
		
		MemberVo member = new MemberVo(); 
		member.setPrjctno(prjctno);
		member.setUsid(usid);
		
		NoticeVo notice = noticeService.detailNotice(sntncno);
		
		// 권한 찾기 
		String author = noticeService.selectAuthor(member);
		
		model.addAttribute("notice", notice);
		model.addAttribute("author", author);
		
		return "tiles.pms_col.notice_detail";
	}
	
	// 공지사항 수정
	@RequestMapping("noticeModify")
	public String noticeModify(NoticeVo noticeVo , Model model) {
		logger.debug("수정 noticeVo : {} " , noticeVo);
		
		String sntncno = noticeVo.getSntncno();		
		NoticeVo notice = noticeService.detailNotice(sntncno);
		model.addAttribute("notice", notice);

		return "tiles.pms_col.notice_modify";
	}
	
	// 공지사항 수정 - 저장
	@RequestMapping("noticeModifySave")
	public String noticeModifySave(NoticeVo noticeVo , Model model) {
		logger.debug("noticeVo : {} " , noticeVo);
		
		noticeService.modifyNotice(noticeVo);
		
		String sntncno = noticeVo.getSntncno();
		
		model.addAttribute("sntncno", sntncno);
		return "redirect:/notice/noticeDetail";
	}
	
	
	// 공지사항 삭제
	@RequestMapping("noticeDelete")
	public String noticeDelete(NoticeVo noticeVo , Model model,
				HttpSession session,
				@RequestParam(defaultValue = "1") int page, 
				@RequestParam(defaultValue = "5") int pageSize) {
		logger.debug("삭제 noticeVo : {} " , noticeVo);
		
		String prjctno = (String) session.getAttribute("prjctno");
		String usid = (String) session.getAttribute("usid");
		
		PageVo pageVo = new PageVo();
		pageVo.setPage(page);
		pageVo.setPageSize(pageSize);
		pageVo.setPrjctno(prjctno);
		
		// 권한 값에 따라 버튼 보여주기
		MemberVo member = new MemberVo(); 
		member.setPrjctno(prjctno);
		member.setUsid(usid);
		String author = noticeService.selectAuthor(member);
		model.addAttribute("author", author);

		model.addAllAttributes(noticeService.selectPagingNotice(pageVo));
		
		noticeService.noticeDelete(noticeVo);
		
		String sntncno = noticeVo.getSntncno();
		
		model.addAttribute("sntncno", sntncno);
		return "redirect:/notice/pagingNotice";
	}

	@RequestMapping("noticeInsert")
	public String noticeInsert(HttpSession session) {
		String prjctno = (String) session.getAttribute("prjctno");
		String usid = (String) session.getAttribute("usid");
		
		return "tiles.pms_col.notice_insert";
	}
	
	@RequestMapping("noticeInsertSave")
	public String noticeInsertSave(HttpSession session, NoticeVo noticeVo, Model model) {
		String prjctno = (String) session.getAttribute("prjctno");
		String wrterid = (String) session.getAttribute("usid");
		noticeVo.setPrjctno(prjctno);
		noticeVo.setWrterid(wrterid);
		
		// 공지사항 등록
		noticeService.noticeInsert(noticeVo);
		
		return "redirect:/notice/pagingNotice";
	}

}
