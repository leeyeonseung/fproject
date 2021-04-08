package kr.or.ddit.message.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.message.repository.MessageDao;
import kr.or.ddit.model.MessageVo;
import kr.or.ddit.model.PageVo;
import kr.or.ddit.user.model.UsersVo;

@Service("messageService")
public class MessageServiceImpl implements MessageService{
	@Resource(name = "MessageDao")
	public MessageDao MessageDao;

	@Override
	public int msgsend(MessageVo msgvo) {
	
		return MessageDao.msgsend(msgvo);
	}

	@Override
	public int msgsend2(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return MessageDao.msgsend2(msgvo);
	}

	@Override
	public int count(String re_usid) {
		// TODO Auto-generated method stub
		return MessageDao.count(re_usid);
	}

	@Override
	public List<MessageVo> msgAllList(PageVo pagevo) {
		// TODO Auto-generated method stub
		return MessageDao.msgAllList(pagevo);
	}

	@Override
	public List<MessageVo> msgAllListread(PageVo pagevo) {
		// TODO Auto-generated method stub
		return MessageDao.msgAllListread(pagevo);
	}

	@Override
	public MessageVo msgDetail(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return MessageDao.msgDetail(msgvo);
	}

	@Override
	public int DeState(String mssageno) {
		// TODO Auto-generated method stub
		return MessageDao.DeState(mssageno);
	}

	@Override
	public List<MessageVo> msgSentList(PageVo pagevo) {
		// TODO Auto-generated method stub
		return MessageDao.msgSentList(pagevo);
	}

	@Override
	public int replysend(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return MessageDao.replysend(msgvo);
	}

	@Override
	public int replysend2(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return MessageDao.replysend2(msgvo);
	}

	@Override
	public int selectAllMsgCnt(String usid) {
		// TODO Auto-generated method stub
		return MessageDao.selectAllMsgCnt(usid);
	}

	@Override
	public int selectAllMsgCnt2(String re_usid) {
		// TODO Auto-generated method stub
		return MessageDao.selectAllMsgCnt2(re_usid);
	}

	@Override
	public List<UsersVo> msgkeydown(String value) {
		// TODO Auto-generated method stub
		return MessageDao.msgkeydown(value);
	}

}
