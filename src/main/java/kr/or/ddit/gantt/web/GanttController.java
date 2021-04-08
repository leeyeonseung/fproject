package kr.or.ddit.gantt.web;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import kr.or.ddit.gantt.model.GanttVo;
import kr.or.ddit.gantt.service.GanttService;

@RequestMapping("gantt")
@Controller
public class GanttController {
	
	private static final Logger logger = LoggerFactory.getLogger(GanttController.class);
	
	@Resource(name = "ganttService")
	public GanttService ganttService;
	
	@RequestMapping("view")
	public String ganttView() {
		return "pms_col/ganttchart";
	}
	
	@RequestMapping("addTask")
	public String addTask(HttpServletResponse resp, Model model) {
		List<GanttVo> tasklist = ganttService.callTask("PJ2103004");
		logger.debug("jsontasklist : {}", tasklist);
		
		model.addAttribute("tasklist", tasklist);
		return "jsonView";
		
	}
}
