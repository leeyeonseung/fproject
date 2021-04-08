package kr.or.ddit.notice.repository;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.NoticeVo;
import kr.or.ddit.model.PageVo;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public List<NoticeVo> selectnoticeList(String prjctno) {
		return template.selectList("notice.selectnoticeList", prjctno) ;
	}

//	@Override
//	public List<NoticeVo> selectPagingNotice(Map<String, Object> paramMap) {
//		return template.selectList("notice.selectPagingNotice", paramMap);
//				
//				
//	}

	@Override
	public int selectAllNoticeCnt() {
		return template.selectOne("notice.selectAllNoticeCnt");
	}

	@Override
	public NoticeVo detailNotice(String sntncno) {
		return template.selectOne("notice.detailNotice", sntncno);
	}

	@Override
	public Object selectPagingNotice(PageVo pageVo) {
		return template.selectList("notice.selectPagingNotice", pageVo);
	}


	@Override
	public String selectAuthor(MemberVo member) {
		return template.selectOne("notice.selectAuthor", member);
	}

	@Override
	public int modifyNotice(NoticeVo noticeVo) {
		return template.update("notice.modifyNotice", noticeVo);
		
	}

	@Override
	public int noticeDelete(NoticeVo noticeVo) {
		return template.delete("notice.noticeDelete", noticeVo);
	}

	@Override
	public int noticeInsert(NoticeVo noticeVo) {
		return template.insert("notice.noticeInsert", noticeVo);
	}
}
