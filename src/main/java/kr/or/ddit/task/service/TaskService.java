package kr.or.ddit.task.service;

import java.util.List;
import java.util.Map;

import org.python.modules.math;

import kr.or.ddit.model.PageVo;
import kr.or.ddit.model.TaskVo;

public interface TaskService {
	// 처음 : 해당 프로젝트에 대한 모든 업무와 개수
	Map<String, Object> taskAllList(PageVo pagevo);

	List<TaskVo>TaskAllViewAccess(Map<String, Object>map);
	
		
	
}
