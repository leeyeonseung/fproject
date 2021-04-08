package kr.or.ddit.gantt.repository;

import java.util.List;

import kr.or.ddit.gantt.model.GanttVo;

public interface GanttDao {
	
	//간트챠트에 들어갈 업무 리스트 불러오기
	List<GanttVo> callTask(String prjctno);
}
