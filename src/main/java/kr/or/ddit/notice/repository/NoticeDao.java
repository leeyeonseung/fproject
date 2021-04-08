package kr.or.ddit.notice.repository;

import java.util.List;
import java.util.Map;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.NoticeVo;
import kr.or.ddit.model.PageVo;

public interface NoticeDao {

	List<NoticeVo> selectnoticeList(String prjctno);

//	List<NoticeVo> selectPagingNotice(Map<String, Object> paramMap);

	int selectAllNoticeCnt();

	NoticeVo detailNotice(String sntncno);

	Object selectPagingNotice(PageVo pageVo);

	// 권한 번호 찾기
	String selectAuthor(MemberVo member);

	// 공지사항 수정
	int modifyNotice(NoticeVo noticeVo);

	// 공지사항 삭제
	int noticeDelete(NoticeVo noticeVo);

	// 공지사항 새글 등록
	int noticeInsert(NoticeVo noticeVo);

}
