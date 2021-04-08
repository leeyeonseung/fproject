package kr.or.ddit.journal.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.journal.repository.JournalDao;

@Service("journalService")
public class JournalServiceImpl implements JournalService{

	@Resource(name = "journalDao")
	public JournalDao journalDao;
}
