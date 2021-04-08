package kr.or.ddit.websocket.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.ChatVo;
import kr.or.ddit.model.MemberVo;
@Repository("websocketDao")
public class WebsocketDaoImpl implements WebsocketDao{

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate templete;
	
	@Override
	public int insertMessage(ChatVo chatvo) {
		return templete.insert("websocket.insertMessage", chatvo);
	}

	@Override
	public List<MemberVo> callUser(String prjctno) {
		return templete.selectList("websocket.callUser", prjctno);
	}
	
}
