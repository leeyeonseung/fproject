package kr.or.ddit.project.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.ProjectVo;
import kr.or.ddit.project.repository.ProjectDao;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService{

	@Resource(name = "projectDao")
	public ProjectDao projectDao;
	
	@Override
	public List<ProjectVo> selectAllpro(String usid) {
		return projectDao.selectAllpro(usid);
	}

	@Override
	public int registproject(ProjectVo projectvo) {
		return projectDao.registproject(projectvo);
	}

	@Override
	public List<ProjectVo> selectcomplatepro(String usid) {
		return projectDao.selectcomplatepro(usid);
	}

	@Override
	public int completepro(ProjectVo projectvo) {
		return projectDao.completepro(projectvo);
	}

	@Override
	public int modifybtnpro(ProjectVo projectvo) {
		return projectDao.modifybtnpro(projectvo);
	}

	@Override
	public int favoritepro(ProjectVo projectvo) {
		return projectDao.favoritepro(projectvo);
	}

	@Override
	public int favorite(ProjectVo projectvo) {
		return projectDao.favorite(projectvo);
	}

	@Override
	public int deleteproject(String prjctno) {
		return projectDao.deleteproject(prjctno);
	}

	@Override
	public List<ProjectVo> recyclebin(String usid) {
		return projectDao.recyclebin(usid);
	}

	@Override
	public int deleterecycle(ProjectVo projectvo) {
		return projectDao.deleterecycle(projectvo);
	}

	@Override
	public int restorepro(ProjectVo projectvo) {
		return projectDao.restorepro(projectvo);
	}

	@Override
	public int insertmember(MemberVo membervo) {
		return projectDao.insertmember(membervo);
	}

	@Override
	public List<ProjectVo> invitelist2(String prjctno) {
		// TODO Auto-generated method stub
		return projectDao.invitelist2(prjctno);
	}
	
}
