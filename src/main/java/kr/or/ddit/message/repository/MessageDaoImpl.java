package kr.or.ddit.message.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.MessageVo;
import kr.or.ddit.model.PageVo;
import kr.or.ddit.user.model.UsersVo;

@Repository("MessageDao")
public class MessageDaoImpl implements MessageDao {
	
	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public int msgsend(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return template.insert("msg.msgsend",msgvo);
	}

	@Override
	public int msgsend2(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return template.insert("msg.msgsend2",msgvo);
	}

	@Override
	public int count(String re_usid) {
		// TODO Auto-generated method stub
		return template.selectOne("msg.count",re_usid);
	}

	@Override
	public List<MessageVo> msgAllList(PageVo pagevo) {
		// TODO Auto-generated method stub
		return template.selectList("msg.msgAllList",pagevo);
	}

	@Override
	public List<MessageVo> msgAllListread(PageVo pagevo) {
		// TODO Auto-generated method stub
		return template.selectList("msg.msgAllListread",pagevo);
	}

	@Override
	public MessageVo msgDetail(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return template.selectOne("msg.msgDetail", msgvo);
	}

	@Override
	public int DeState(String mssageno) {
		// TODO Auto-generated method stub
		return template.update("msg.DeState",mssageno);
	}

	@Override
	public List<MessageVo> msgSentList(PageVo pagevo) {
		// TODO Auto-generated method stub
		return template.selectList("msg.msgSentList",pagevo);
	}

	@Override
	public int replysend(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return template.insert("msg.replysend", msgvo);
	}

	@Override
	public int replysend2(MessageVo msgvo) {
		// TODO Auto-generated method stub
		return template.insert("msg.replysend2", msgvo);
	}

	@Override
	public int selectAllMsgCnt(String usid) {
		// TODO Auto-generated method stub
		return template.selectOne("msg.selectAllMsgCnt",usid);
	}

	@Override
	public int selectAllMsgCnt2(String re_usid) {
		// TODO Auto-generated method stub
		return template.selectOne("msg.selectAllMsgCnt2",re_usid);
	}

	@Override
	public List<UsersVo> msgkeydown(String value) {
		return template.selectList("msg.msgkeydown",value);
	}


}
