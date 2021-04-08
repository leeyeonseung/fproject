package kr.or.ddit.task.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.model.PageVo;
import kr.or.ddit.model.TaskVo;
import kr.or.ddit.task.repository.TaskDao;

@Service("taskService")
public class TaskServiceImpl implements TaskService{

	@Resource(name="taskDao")
	public TaskDao taskDao;
	
	@Override
	public Map<String, Object> taskAllList(PageVo pagevo) {
		Map<String, Object> map = new HashMap<>();
		
		map.put("taskAllList", taskDao.taskAllList(pagevo));
		map.put("taskCnt", taskDao.taskCount(pagevo.getPrjctno()));
		map.put("pagination", taskDao.selectAlltask(pagevo.getPrjctno())/pagevo.getPageSize()+1);
		
		return map;
	}

	@Override
	public List<TaskVo> TaskAllViewAccess(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return taskDao.TaskAllViewAccess(map);
	}

	


}
