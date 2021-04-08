package kr.or.ddit.notice.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.NoticeVo;
import kr.or.ddit.model.PageVo;
import kr.or.ddit.notice.repository.NoticeDao;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Resource(name = "noticeDao")
	public NoticeDao noticeDao;

	@Override
	public List<NoticeVo> selectnoticeList(String prjctno) {
		return noticeDao.selectnoticeList(prjctno);
	}


	// 프로젝트 하나당 공지사항 하나 list
	/*
	 * @Override public Map<String, Object> selectPagingNotice(Map<String, Object>
	 * paramMap) {
	 * 
	 * PageVo pageVo = (PageVo) paramMap.get("pageVo"); String prjctno = (String)
	 * paramMap.get("prjctno");
	 * 
	 * Map<String, Object> resultMap = new HashMap<String, Object>();
	 * 
	 * resultMap.put("prjctno", prjctno); // 프로젝트 번호
	 * 
	 * resultMap.put("pageVo", pageVo); resultMap.put("noticeList",
	 * noticeDao.selectPagingNotice(paramMap));
	 * 
	 * int noticeCnt = noticeDao.selectAllNoticeCnt(); resultMap.put("pagination",
	 * (int)Math.ceil( (double)noticeCnt / pageVo.getPageSize()) );
	 * 
	 * return resultMap; }
	 */

	@Override
	public NoticeVo detailNotice(String sntncno) {
		return noticeDao.detailNotice(sntncno);
	}


	@Override
	public Map<String, Object> selectPagingNotice(PageVo pageVo) {
		Map<String, Object> resultMap1 = new HashMap<String, Object>();
		resultMap1.put("pageVo", pageVo);
		resultMap1.put("noticeList", noticeDao.selectPagingNotice(pageVo));
		int noticeCnt = noticeDao.selectAllNoticeCnt();
		resultMap1.put("pagination", (int)Math.ceil( (double)noticeCnt / pageVo.getPageSize()) );
		
		return resultMap1;
	}


	// 권한 번호 찾기
	@Override
	public String selectAuthor(MemberVo member) {
		return noticeDao.selectAuthor(member);
	}


	@Override
	public int modifyNotice(NoticeVo noticeVo) {
		return noticeDao.modifyNotice(noticeVo);
	}


	@Override
	public int noticeDelete(NoticeVo noticeVo) {
		return noticeDao.noticeDelete(noticeVo);
	}


	@Override
	public int noticeInsert(NoticeVo noticeVo) {
		return noticeDao.noticeInsert(noticeVo);
	}
}
