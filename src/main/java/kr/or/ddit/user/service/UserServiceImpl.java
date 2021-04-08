package kr.or.ddit.user.service;

import java.io.File;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kr.or.ddit.user.model.UsersVo;
import kr.or.ddit.user.repository.UserDao;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name = "userDao")
	public UserDao userDao;

	@Override
	public UsersVo selectAllUser(String id) {
		
		return userDao.selectAllUser(id);
	}

	@Override
	public int insertUser(UsersVo userVo) {
		
		return userDao.insertUser(userVo);
	}
	
	private JavaMailSender javaMailSender;

	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}
	
	
	@Override
	public boolean send(String subject, String text, String from, String to, String filePath) {
		
		MimeMessage message = javaMailSender.createMimeMessage();
		
		try {
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
		helper.setSubject(subject);
		helper.setText(text, true);
		helper.setFrom(from);
		helper.setTo(to);
		
		if(filePath != null) {
			File file = new File(filePath);
			if(file.exists()) {
				helper.addAttachment(file.getName(), new File(filePath));
			}
		}
		
		javaMailSender.send(message);
		return true;
		}catch(MessagingException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public int updateUsernm(UsersVo userVo) {
				
		return userDao.updateUsernm(userVo);
	}

	@Override
	public int updateUsertelno(UsersVo userVo) {
		
		return userDao.updateUsertelno(userVo);
	}

	@Override
	public int updateUserPhoto(UsersVo userVo) {
		return userDao.updateUserPhoto(userVo);
	}

	@Override
	public int removeUserPhoto(UsersVo userVo) {
		return userDao.removeUserPhoto(userVo);
	}

	@Override
	public int changePass(UsersVo userVo) {
		return userDao.changePass(userVo);
	}

	@Override
	public UsersVo compareUser(String usernm) {
		return userDao.compareUser(usernm);
	}

	@Override
	public String findUserId(String telno) {
		return userDao.findUserId(telno);
	}

	@Override
	public String findEmail(String email) {
		return userDao.findEmail(email);
	}

	@Override
	public int tempPass(UsersVo userVo) {
		return userDao.tempPass(userVo);
	}

}
