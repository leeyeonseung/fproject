package kr.or.ddit.task.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.model.PageVo;
import kr.or.ddit.model.TaskVo;
import kr.or.ddit.task.service.TaskService;
import kr.or.ddit.user.model.UsersVo;

@Controller
@RequestMapping("task")
public class TaskController {
	private static final Logger logger = LoggerFactory.getLogger(TaskController.class);
	
	@Resource(name = "taskService")
	public TaskService taskService;
	
	@RequestMapping("textview")
	public String sdfsadf() {
		return "pms_col/text";
	}
	
	@RequestMapping("task")
	public String taskAllList(PageVo pagevo,Model model,HttpSession session,
								@RequestParam(defaultValue="1") int page,
								@RequestParam(defaultValue="5") int pageSize) {
		
		String prjctno = (String)session.getAttribute("prjctno");
		
		pagevo.setPrjctno(prjctno);
		pagevo.setPageSize(pageSize);
		pagevo.setPage(page);
		
		Map<String, Object>tasklist=taskService.taskAllList(pagevo);
		model.addAllAttributes(taskService.taskAllList(pagevo));
		model.addAttribute("prjctnm", "첫번째 프로젝트");
		model.addAttribute("tasklist",tasklist.get("taskAllList"));
	
		
		logger.debug("jsptasklist:{}",tasklist);
		
		return"pms_col/workhistory";
	}
	
	@RequestMapping("excelDownload")
	public String excelDownload(Model model,HttpSession session,
			@RequestParam(value="workradio")String workradio,
			@RequestParam(value="charr")List<String> charr,
			@RequestParam(value="charr2")List<String> charr2,
			@RequestParam(value="workradio1")String workradio1,
			@RequestParam(value="workradio2")String workradio2) {
		
		List<String> header = new ArrayList<>();
		
		String prjctno = (String)session.getAttribute("prjctno");
		UsersVo uservo =  (UsersVo)session.getAttribute("S_USER");
		header.add("프로젝트번호");
		header.add("업무번호");
		header.add("상태");
		header.add("우선순위");
		header.add("제목");
		header.add("내용");
		header.add("진척도");
		header.add("담당자");
		header.add("작성자");
		header.add("시작일");
		header.add("마감일");
		header.add("등록일");
		
		Map<String, Object>map= new HashMap<String ,Object>();
		map.put("usid", uservo.getUsid());
		map.put("prjctno", prjctno);
		map.put("workradio", workradio);
		map.put("sttus1", charr);
		map.put("workcheck1", charr2);
		map.put("workradio1", workradio1);
		map.put("workradio2", workradio2);
		logger.debug("확인확인:{}",map);
		
		model.addAttribute("header", header);
		model.addAttribute("data", taskService.TaskAllViewAccess(map));
		
		logger.debug("태스크올:{}",taskService.TaskAllViewAccess(map));
		return "userExcelDownloadView";
	}
	
	@RequestMapping("TaskAllViewAccess")
	public String TaskAllViewAccess(@RequestParam(value="workradio")String workradio,
									@RequestParam(value="charr[]")List<String> charr,
									@RequestParam(value="charr2[]")List<String> charr2,
									@RequestParam(value="workradio1")String workradio1,
									@RequestParam(value="workradio2")String workradio2,
									Model model,
									TaskVo taskvo,
									HttpSession session) {
		Map<String, Object>map= new HashMap<String, Object>();
		map.put("usid", "test1");
		map.put("prjctno", "PJ2103004");
		map.put("workradio", workradio);
		map.put("sttus1", charr);
		map.put("workcheck1", charr2);
		map.put("workradio1", workradio1);
		map.put("workradio2", workradio2);
		
		String prjctno = (String)session.getAttribute("prjctno");
		UsersVo uservo =  (UsersVo)session.getAttribute("S_USER");
		
		logger.debug(prjctno);
		
		
		List<TaskVo>taskList = taskService.TaskAllViewAccess(map);
		model.addAttribute("tasklist",taskList);
		
		logger.debug("{}",taskList);
		logger.debug("{}",map);
		return "jsonView";
	}

}
