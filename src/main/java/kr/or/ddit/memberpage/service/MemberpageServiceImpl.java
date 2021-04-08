package kr.or.ddit.memberpage.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.memberpage.repository.MemberpageDao;

@Service("memberpageService")
public class MemberpageServiceImpl implements MemberpageService{

	@Resource(name = "memberpageDao")
	public MemberpageDao memberpageDao;
}
