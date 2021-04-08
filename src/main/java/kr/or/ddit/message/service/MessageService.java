package kr.or.ddit.message.service;

import java.util.List;

import kr.or.ddit.model.MessageVo;
import kr.or.ddit.model.PageVo;
import kr.or.ddit.user.model.UsersVo;

public interface MessageService {

	int msgsend(MessageVo msgvo);
	
	int msgsend2(MessageVo msgvo);
	
	int count(String re_usid);
	
	List<MessageVo>msgAllList(PageVo pagevo);
	
	List<MessageVo>msgAllListread(PageVo pagevo);
	
	MessageVo msgDetail(MessageVo msgvo);
	
	int DeState(String mssageno);
	
	List<MessageVo>msgSentList(PageVo pagevo);
	
	int replysend(MessageVo msgvo);
	
	int replysend2(MessageVo msgvo);
	
	int selectAllMsgCnt(String usid);
	
	int selectAllMsgCnt2(String re_usid);
	
	List<UsersVo>msgkeydown(String value);
}
