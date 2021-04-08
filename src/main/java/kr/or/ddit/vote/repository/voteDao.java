package kr.or.ddit.vote.repository;

import java.util.List;

import kr.or.ddit.model.VoteVo;

public interface voteDao {

	int voteinsert(VoteVo votevo);
	
	int voteListinsert(VoteVo votevo);
	
	List<VoteVo>voteview();
	
	List<VoteVo>votecont(String voteno);
	
	int votecheck(VoteVo votevo);
	
	int novoteupdate(VoteVo votevo);
	
	List<VoteVo>votecontlist(String voteno);
}
