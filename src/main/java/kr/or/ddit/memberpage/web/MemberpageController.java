package kr.or.ddit.memberpage.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.memberpage.service.MemberpageService;

@Controller
@RequestMapping("memberpage")
public class MemberpageController {

	@Resource(name = "memberpageService")
	public MemberpageService memberpageService;
}
