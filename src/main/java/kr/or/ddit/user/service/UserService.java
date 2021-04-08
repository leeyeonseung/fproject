package kr.or.ddit.user.service;

import kr.or.ddit.user.model.UsersVo;

public interface UserService {
	
	// userid에 해당하는 사용자 한명의 정보 조회
	UsersVo selectAllUser(String id);
		
	//회원 가입
	int insertUser(UsersVo userVo);
	
//	메일 전송
//	@param subject 제목
//	@param text 내용
//	@param from 보내는 메일 주소
//	@param to 받는 메일 주소
//	@param filePath 첨부 파일 경로 : 첨부파일 없을시 null
	
	public boolean send(String subject, String text, String from,
						String to, String filePath);

	//마이페이지에서 이름 수정
	int updateUsernm(UsersVo userVo);
	
	//마이페이지에서 번호 수정
	int updateUsertelno(UsersVo userVo);
	
	//마이페이지에서 프로필 사진 변경
	int updateUserPhoto(UsersVo userVo);
	
	//마이페이지에서 프로필 사진 삭제
	int removeUserPhoto(UsersVo userVo);

	//마이페이지에서 비밀번호 변경
	int changePass(UsersVo userVo);
	
	//아이디 찾기에서 이름하고 전화번호 비교
	UsersVo compareUser(String usernm);
	
	//전화번호로 사용자 아이디 찾기
	String findUserId(String telno);
	
	//이메일로 사용자 이메일 찾기
	String findEmail(String email);
	
	//이메일로 임시 비밀번호 발급 후 업데이트
	int tempPass(UsersVo userVo);
}
