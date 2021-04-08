package kr.or.ddit.calendar.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.calendar.model.CalendarVo2;
import kr.or.ddit.calendar.service.CalendarService;
import kr.or.ddit.model.CalendarVo;
import kr.or.ddit.model.TaskVo;
import kr.or.ddit.model.TaskVo2;

@RequestMapping("calendar")
@Controller
public class CalendarController {
	private static final Logger logger = LoggerFactory.getLogger(CalendarController.class);
	
	@Resource(name = "calendarService")
	public CalendarService calendarService; 
	
	@RequestMapping("view")
	public String calendarView() {
		return "pms_col/calendar";
	}
	
	@RequestMapping("callAllCalendar")
	public String callDB(Model model) {
		
		Map<String, Object> map = calendarService.callAllCalendar("PJ2103004");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
		List<CalendarVo2> list = new ArrayList<CalendarVo2>();
		
		for(TaskVo2 vo : (List<TaskVo2>)map.get("callTask")) {
			CalendarVo2 vo1 = new CalendarVo2();
			vo1.setTitle(vo.getJobnm());
			
			vo1.setStart(sdf.format(vo.getJobbgnde()));
			if(vo.getJobclosde() != null) {				
				vo1.setEnd(sdf.format(vo.getJobclosde()));
			}else {
				vo1.setEnd("2021-03-29");
			}
			
			logger.debug("taskvo : {}", vo);
			logger.debug("calendarvo : {}", vo1.getTitle());
			list.add(vo1);
		}
		
		for(CalendarVo vo : (List<CalendarVo>)map.get("callCalendar")) {
			CalendarVo2 vo2 = new CalendarVo2();
			vo2.setTitle(vo.getFxsj());
			vo2.setStart(sdf.format(vo.getFxbgnde()));
			vo2.setEnd(sdf.format(vo.getFxendde()));
			list.add(vo2);
		}
		
		model.addAttribute("AllList", list);

		return "jsonView";
	}
	
	@RequestMapping("uiview")
	public String uiview() {
		return "pms_col/ysl";
	}
	
	/*
	@RequestMapping("callAllCalendar")
	public @ResponseBody Map<String, Object> callDB2(Model model) {
		Map<String, Object> map = calendarService.callAllCalendar("PJ2103004");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
		List<CalendarVo2> list = new ArrayList<CalendarVo2>();
		
		CalendarVo2 vo1 = new CalendarVo2();
		CalendarVo2 vo2 = new CalendarVo2();
		
		for(TaskVo vo : (List<TaskVo>)map.get("callTask")) {
			vo1.setTitle(vo.getJobnm());
			vo1.setStart(sdf.format(vo.getJobbgnde()));
			vo1.setEnd(sdf.format(vo.getJobclosde()));
			list.add(vo1);
		}
		for(CalendarVo vo : (List<CalendarVo>)map.get("callCalendar")) {
			vo2.setTitle(vo.getFxsj());
			vo2.setStart(sdf.format(vo.getFxbgnde()));
			vo2.setEnd(sdf.format(vo.getFxendde()));
			list.add(vo2);
		}
		
		Map<String, Object> resultMap = new HashedMap<String, Object>();
		resultMap.put("AllList", list);
		resultMap.put("result", "SUCCESS");
		
		return resultMap;
	}
	*/
	
}
