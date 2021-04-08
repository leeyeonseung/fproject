package kr.or.ddit.memberpage.repository;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("memberpageDao")
public class MemberpageDaoImpl implements MemberpageDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;
	
	
}
