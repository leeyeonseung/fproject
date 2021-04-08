package kr.or.ddit.websocket.web;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.model.ChatVo;
import kr.or.ddit.user.model.UsersVo;
import kr.or.ddit.websocket.SocketChatHandler;
import kr.or.ddit.websocket.service.WebsocketService;

@RequestMapping("socket")
@Controller
public class SocketChatController {
	
	@Resource(name = "socketHandler")
	private SocketChatHandler socketHandler;
	
	@Resource(name = "websocketService")
	private WebsocketService websocketService;
	
	@RequestMapping("view")
	public String socketView(HttpSession session, Model model) {
		UsersVo user = (UsersVo)session.getAttribute("S_USER");
		
		model.addAttribute("user", user);
		return "websocket/chatView";
	}
	
	@RequestMapping("serverToClient")
	public void serverToClient() throws IOException {
		socketHandler.serverToClient();
	}
	
	@RequestMapping("insertMessage")
	public String insertMessage(Model model, String chttcn, String usid) {
		
		ChatVo vo = new ChatVo();
		vo.setPrjctno("PJ2103004");
		vo.setChttcn(chttcn);
		vo.setUsid(usid);
		
		int insertCnt = websocketService.insertMessage(vo);
		
		String sw = null;
		if(insertCnt == 1) {
			sw = "성공";
		}else {
			sw = "실패";
		}
		model.addAttribute("sw", sw);
		return "jsonView";
	}
}