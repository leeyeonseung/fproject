package kr.or.ddit.message.repository;

import java.util.List;

import kr.or.ddit.model.MessageVo;
import kr.or.ddit.model.PageVo;
import kr.or.ddit.user.model.UsersVo;

public interface MessageDao {

	/* 메세지보내기 */
	int msgsend(MessageVo msgvo);
	/* 메세지보내기 msg reception 테이블 */
	int msgsend2(MessageVo msgvo);
	
	/*새로운 메시지 카운트*/
	int count(String re_usid);
	
	List<MessageVo>msgAllList(PageVo pagevo);
	
	List<MessageVo>msgAllListread(PageVo pagevo);
	
	MessageVo msgDetail(MessageVo msgvo);
	
	int DeState(String mssageno);
	
	List<MessageVo>msgSentList(PageVo pagevo);
	
//	답장보내기  2개 테이블에 추가
	int replysend(MessageVo msgvo);
	int replysend2(MessageVo msgvo);
	
	//페이징 처리
	int selectAllMsgCnt(String usid);
	
	int selectAllMsgCnt2(String re_usid);
	
	List<UsersVo>msgkeydown(String value);
	
	
	

}
