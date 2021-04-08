package kr.or.ddit.websocket.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.model.ChatVo;
import kr.or.ddit.model.MemberVo;
import kr.or.ddit.websocket.repository.WebsocketDaoImpl;

@Service("websocketService")
public class WebsocketServiceImpl implements WebsocketService{

	@Resource(name = "websocketDao")
	private WebsocketDaoImpl websocketDao;

	@Override
	public int insertMessage(ChatVo chatvo) {
		return websocketDao.insertMessage(chatvo);
	}

	@Override
	public List<MemberVo> callUser(String prjctno) {
		return websocketDao.callUser(prjctno);
	}

	
}
