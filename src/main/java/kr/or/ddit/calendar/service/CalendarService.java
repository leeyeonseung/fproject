package kr.or.ddit.calendar.service;

import java.util.Map;

public interface CalendarService {

	//해당 프로젝트의 업무 불러오기
	Map<String, Object> callAllCalendar(String prjctno);
}
