package kr.or.ddit.journal.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


@Repository("journalDao")
public class JournalDaoImpl implements JournalDao{

	@Resource(name="sqlSessionTemplate")
	public SqlSessionTemplate template; 
}
