package kr.or.ddit.util;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import kr.or.ddit.websocket.SocketChatHandler;



@Configuration
@EnableWebSocket
public class WebsocketConfig implements WebSocketConfigurer{

	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {

		 registry.addHandler(socketHandler(), "/ws/chat")
		 
		 			//.setAllowedOrigins("*")
		 			//.addInterceptors(new MyHandshakeInterceptor())
		 			.addInterceptors(new HttpSessionHandshakeInterceptor())
		 			.withSockJS();
	}

	@Bean
	public SocketChatHandler socketHandler(){
		return new SocketChatHandler();
	}
}
