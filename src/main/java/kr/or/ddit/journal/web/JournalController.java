package kr.or.ddit.journal.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.journal.service.JournalService;

@Controller
@RequestMapping("journal")
public class JournalController {

	@Resource(name = "journalService")
	public JournalService journalService;
}
