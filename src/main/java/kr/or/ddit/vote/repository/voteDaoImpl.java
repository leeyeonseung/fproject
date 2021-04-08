package kr.or.ddit.vote.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.VoteVo;

@Repository("voteDao")
public class voteDaoImpl implements voteDao {
	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public int voteinsert(VoteVo votevo) {
		// TODO Auto-generated method stub
		return template.insert("vote.voteinsert", votevo);
	}

	@Override
	public int voteListinsert(VoteVo votevo) {
		// TODO Auto-generated method stub
		return template.insert("vote.voteListinsert",votevo);
	}

	@Override
	public List<VoteVo> voteview() {
		// TODO Auto-generated method stub
		return template.selectList("vote.voteview");
	}

	@Override
	public List<VoteVo> votecont(String voteno) {
		// TODO Auto-generated method stub
		return template.selectList("vote.votecont",voteno);
	}

	@Override
	public int votecheck(VoteVo votevo) {
		// TODO Auto-generated method stub
		return template.insert("vote.votecheck", votevo);
	}

	@Override
	public int novoteupdate(VoteVo votevo) {
		// TODO Auto-generated method stub
		return template.update("vote.novoteupdate", votevo);
	}

	@Override
	public List<VoteVo> votecontlist(String voteno) {
		// TODO Auto-generated method stub
		return template.selectList("vote.votecontlist",voteno);
	}


	
	
}
