package kr.or.ddit.gantt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.gantt.model.GanttVo;
import kr.or.ddit.gantt.repository.GanttDao;

@Service("ganttService")
public class GanttServiceImpl implements GanttService{

	@Resource(name = "ganttDao")
	public GanttDao ganttDao;

	@Override
	public List<GanttVo> callTask(String prjctno) {
		return ganttDao.callTask(prjctno);
	}
}
