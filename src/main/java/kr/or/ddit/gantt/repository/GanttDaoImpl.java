package kr.or.ddit.gantt.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.gantt.model.GanttVo;

@Repository("ganttDao")
public class GanttDaoImpl implements GanttDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public List<GanttVo> callTask(String prjctno) {
		return template.selectList("gantt.callTask", prjctno);
	}
}
