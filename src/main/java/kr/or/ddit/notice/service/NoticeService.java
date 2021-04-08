package kr.or.ddit.notice.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.NoticeVo;
import kr.or.ddit.model.PageVo;

public interface NoticeService {
	
	// 공지사항 리스트
	List<NoticeVo> selectnoticeList(String prjctno);

	// 페이징 처리 공지사항 리스트
//	Map<String, Object> selectPagingNotice(Map<String, Object> paramMap);

	// 상세보기
	NoticeVo detailNotice(String sntncno);

	Map<String, Object> selectPagingNotice(PageVo pageVo);

	// 권한 번호 찾기
	String selectAuthor(MemberVo member);

	// 공지사항 수정
	int modifyNotice(NoticeVo noticeVo);

	// 공지사항 삭제
	int noticeDelete(NoticeVo noticeVo);

	// 공지사항 새글 등록
	int noticeInsert(NoticeVo noticeVo);

}
