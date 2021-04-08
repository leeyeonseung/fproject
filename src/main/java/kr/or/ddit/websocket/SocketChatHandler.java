package kr.or.ddit.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import kr.or.ddit.user.model.UsersVo;

public class SocketChatHandler extends TextWebSocketHandler {

	private static final Logger logger = LoggerFactory.getLogger(SocketChatHandler.class);

	private List<WebSocketSession> sessionList;

	private List<String> msg; 

	public SocketChatHandler() {
		sessionList = new ArrayList<>();
		msg = new ArrayList<String>();
	
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		String user = getUser(session);
		sessionList.add(session);

		logger.debug("채팅 접속 : {}", user);
		for (WebSocketSession currentSession : sessionList) {
			currentSession.sendMessage(new TextMessage(user + " 님이 입장 했습니다. " ));
		
		}
	}
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String user = getUser(session);
		logger.debug("메세지전송 = {} : {}", user, message.getPayload());

		for (WebSocketSession currentSession : sessionList) {
			currentSession.sendMessage(new TextMessage(user + " : " + message.getPayload()));
		}
		logger.debug("user : {}", user );
		
		
	}

//	@Override
//	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//		String user = getUser(session);
//		sessionList.remove(session);
//		
//		logger.debug("연결 끊김 : {}, {}", user, status);
//		for (WebSocketSession currentSession : sessionList) {
//			currentSession.sendMessage(new TextMessage(user + " 님이 퇴장 했습니다. " ));
//		}
//	}

	private String getUser(WebSocketSession session) {
		Map<String, Object> map = session.getAttributes();
		UsersVo uservo = (UsersVo)map.get("S_USER");
		String user = uservo.getUsernm();
		logger.debug("usernm : {}", user);
		return user;
	}

	public void serverToClient() throws IOException {
		for(WebSocketSession wSession : sessionList)
			wSession.sendMessage(new TextMessage("서버 전송 메세지"));
			logger.debug("서버 전송 메세지 serverToClient");
	}
	
//	public void serverToClient(HttpSession session) throws IOException {
//		for(WebSocketSession wSession : sessionList)
//			if(wSession.getId().equals(session.getId()))
//				wSession.sendMessage(new TextMessage("서버 전송 메세지"));				
//	}

}