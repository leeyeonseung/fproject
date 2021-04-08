package kr.or.ddit.task.repository;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.PageVo;
import kr.or.ddit.model.TaskVo;

@Repository("taskDao")
public class TaskDaoImpl implements TaskDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;
	
	@Override
	public List<TaskVo> taskAllList(PageVo pagevo) {
		return template.selectList("task.taskAllList", pagevo);
	}


	@Override
	public int taskCount(String prjctno) {
		return template.selectOne("task.taskCount", prjctno);
	}


	@Override
	public List<TaskVo> TaskAllViewAccess(Map<String, Object>map) {
		// TODO Auto-generated method stub
		return template.selectList("task.TaskAllViewAccess",map);
	}

	@Override
	public int selectAlltask(String prjctno) {
		// TODO Auto-generated method stub
		return template.selectOne("task.selectAlltask",prjctno);
	}


	
	



}
