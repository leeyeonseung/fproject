package kr.or.ddit.websocket.repository;

import java.util.List;

import kr.or.ddit.model.ChatVo;
import kr.or.ddit.model.MemberVo;

public interface WebsocketDao {
	
	//채팅내역 저장
	int insertMessage(ChatVo chatvo);
	
	//프로젝트 구성원 가져오기
	List<MemberVo> callUser(String prjctno);
}
