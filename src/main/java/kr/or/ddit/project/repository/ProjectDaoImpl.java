package kr.or.ddit.project.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.MemberVo;
import kr.or.ddit.model.ProjectVo;

@Repository("projectDao")
public class ProjectDaoImpl implements ProjectDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;
	
	@Override
	public List<ProjectVo> selectAllpro(String usid) {
		return template.selectList("project.selectAllpro", usid);
	}

	@Override
	public int registproject(ProjectVo projectvo) {
		return template.insert("project.registproject",projectvo);
	}

	@Override
	public List<ProjectVo> selectcomplatepro(String usid) {
		return template.selectList("project.selectcomplatepro", usid);
	}

	@Override
	public int completepro(ProjectVo projectvo) {
		return template.update("project.completepro",projectvo);
	}

	@Override
	public int modifybtnpro(ProjectVo projectvo) {
		return template.update("project.modifybtnpro",projectvo);
	}

	@Override
	public int favoritepro(ProjectVo projectvo) {
		return template.update("project.favoritepro",projectvo);
	}
	@Override
	public int favorite(ProjectVo projectvo) {
		return template.update("project.favorite",projectvo);
	}

	@Override
	public int deleteproject(String prjctno) {
		return template.delete("project.deleteproject",prjctno);
	}

	@Override
	public List<ProjectVo> recyclebin(String usid) {
		return template.selectList("project.recyclebin", usid);
	}

	@Override
	public int deleterecycle(ProjectVo projectvo) {
		return template.update("project.deleterecycle",projectvo);
	}

	@Override
	public int restorepro(ProjectVo projectvo) {
		return template.update("project.restorepro",projectvo);
	}

	@Override
	public int insertmember(MemberVo membervo) {
		return template.insert("project.insertmember", membervo);
	}

	@Override
	public List<ProjectVo> invitelist2(String prjctno) {
		// TODO Auto-generated method stub
		return template.selectList("project.invitelist2",prjctno);
	}
	
}
