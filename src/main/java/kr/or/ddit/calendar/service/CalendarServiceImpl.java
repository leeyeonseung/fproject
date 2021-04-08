package kr.or.ddit.calendar.service;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.stereotype.Service;

import kr.or.ddit.calendar.repository.CalendarDao;

@Service("calendarService")
public class CalendarServiceImpl implements CalendarService{

	@Resource(name = "calendarDao")
	public CalendarDao calendarDao;

	@Override
	public Map<String, Object> callAllCalendar(String prjctno) {
		Map<String, Object> map = new HashedMap<>();
		
		map.put("callTask", calendarDao.callTask(prjctno));
		map.put("callCalendar", calendarDao.callCalendar(prjctno));
		return map;
	}

	
}
