package kr.or.ddit.project.repository;

import java.util.List;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.ProjectVo;

public interface ProjectDao {

	// 프로젝트select
	List<ProjectVo> selectAllpro(String usid);

	// 완료된 프로젝트
	List<ProjectVo> selectcomplatepro(String usid);
	
	List<ProjectVo>invitelist2(String prjctno);

	// 프로젝트 등록
	int registproject(ProjectVo projectvo);

	// 프로젝트 등록시 등록자 member에 넣기
	int insertmember(MemberVo membervo);

	// 수정>> 완료 프로젝트 이동
	int completepro(ProjectVo projectvo);

	// 완료>>수정 프로젝트 이동
	int modifybtnpro(ProjectVo projectvo);

	// 즐겨찾기 버튼 수정
	int favoritepro(ProjectVo projectvo);

	// 즐겨찾기 버튼 수정
	int favorite(ProjectVo projectvo);

	// 프로젝트 삭제
	int deleteproject(String prjctno);

	// 휴지통 리스트
	List<ProjectVo> recyclebin(String usid);

	// 수정>> 휴지통
	int deleterecycle(ProjectVo projectvo);

	// 휴지통 > 수정
	int restorepro(ProjectVo projectvo);
}
