package kr.or.ddit.calendar.repository;

import java.util.List;

import kr.or.ddit.model.CalendarVo;
import kr.or.ddit.model.TaskVo;
import kr.or.ddit.model.TaskVo2;

public interface CalendarDao {
	
	//해당 프로젝트의 업무일정 불러오기
	List<TaskVo2> callTask(String prjctno);
	
	//해당 프로젝트의 일정관리 불러오기
	List<CalendarVo> callCalendar(String prjctno);
}
