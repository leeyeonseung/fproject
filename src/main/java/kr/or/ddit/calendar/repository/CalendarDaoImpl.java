package kr.or.ddit.calendar.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.CalendarVo;
import kr.or.ddit.model.TaskVo;
import kr.or.ddit.model.TaskVo2;

@Repository("calendarDao")
public class CalendarDaoImpl implements CalendarDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public List<TaskVo2> callTask(String prjctno) {
		return template.selectList("calendar.callTask", prjctno);
	}

	@Override
	public List<CalendarVo> callCalendar(String prjctno) {
		return template.selectList("calendar.callCalendar", prjctno);
	}
	
}
