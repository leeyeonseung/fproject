package kr.or.ddit.user.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.user.model.UsersVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public UsersVo selectAllUser(String id) {
		
		return template.selectOne("users.selectAllUser", id);
	}

	@Override
	public int insertUser(UsersVo userVo) {
		int cnt = template.insert("users.insertUser", userVo);
		
		return cnt;
	}

	@Override
	public int updateUsernm(UsersVo userVo) {
		int cnt = template.update("users.updateUsernm", userVo);
		
		return cnt;
	}

	@Override
	public int updateUsertelno(UsersVo userVo) {
		
		int cnt = template.update("users.updateUsertelno", userVo);
		
		return cnt;
	}

	@Override
	public int updateUserPhoto(UsersVo userVo) {
		
		int cnt = template.update("users.updateUserPhoto", userVo);
		
		return cnt;
	}

	@Override
	public int removeUserPhoto(UsersVo userVo) {
		
		int cnt = template.update("users.removeUserPhoto", userVo);
		
		return cnt;
	}

	@Override
	public int changePass(UsersVo userVo) {
		
		int cnt = template.update("users.changePass", userVo);
		
		return cnt;
	}

	@Override
	public UsersVo compareUser(String usernm) {
		return template.selectOne("users.compareUser", usernm);
	}

	@Override
	public String findUserId(String telno) {
		return template.selectOne("users.findUserId", telno);
	}

	@Override
	public String findEmail(String email) {
		return template.selectOne("users.findEmail", email);
	}

	@Override
	public int tempPass(UsersVo userVo) {
		int cnt = template.update("users.tempPass", userVo);
		return cnt;
	}
	
	
}
