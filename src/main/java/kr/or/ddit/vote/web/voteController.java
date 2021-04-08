package kr.or.ddit.vote.web;



import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.model.VoteVo;
import kr.or.ddit.vote.service.voteService;

@Controller
@RequestMapping("vote")
public class voteController {

	private static final Logger logger = LoggerFactory.getLogger(voteController.class);
	
	@Resource(name="voteService")
	public voteService voteservice;
	
	@RequestMapping("votemake")
	public String votemake(Model model) {
		List<VoteVo>votelist=voteservice.voteview();
		
		model.addAttribute("votelist", votelist);
		
		return "pms_col/votemake";
	}
	@RequestMapping("voteDetail")
	public String voteDetail(String voteno
							,String prjctno
							,String votethema
							,String voteendde
							,Model model) {
		
		logger.debug("voteno:{}",voteno);
		List<VoteVo>voteDelist=voteservice.votecont(voteno);
		logger.debug("voteDelist : {}",voteDelist);
		
		model.addAttribute("voteDelist",voteDelist);
		
		
		return"pms_col/voteDetail";
	}
	
	@RequestMapping("voteinsert")
	public String voteinsert(
							String[] votelist,
							VoteVo votevo) {
		
		
		logger.debug("votelist 값:{}",votelist);
		logger.debug("votevo 값:{}",votevo);
		
		votevo.setPrjctno("PJ2103006");
		
		int insertCnt = 0;
		int insertCnt1 = 0;
		
		try {
			insertCnt= voteservice.voteinsert(votevo);
			
			for(int i=0; i<votelist.length;i++) {
				  votevo.setVotelist(votelist[i]);
				  votevo.setVotelistno(i+1);
				  insertCnt1=voteservice.voteListinsert(votevo);
			  }
			  
			  logger.debug("insertCnt1:{}", insertCnt1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		
		if (insertCnt == 1) {
			logger.debug("사용자 등록 성공 insertCnt 값:{}",insertCnt );
		
			return "redirect:/vote/votemake";
		}	
		else {
			logger.debug("사용자 등록 실패 insertCnt 값:{}",insertCnt );
			
		
	}
		return "pms_col/votemake";

	}
	@RequestMapping("votecheck")
	public String votecheck(String voteno,String votelistno,
			@RequestParam(value="voteone")String voteone
							,VoteVo votevo,Model model) {
		
	
		
		votevo.setUsid("test1");
		logger.debug("votevo:{}",votevo);
		
		int updateCnt=0;
		try {
			updateCnt= voteservice.novoteupdate(votevo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (updateCnt == 1) {
			logger.debug("사용자 등록 성공 updateCnt 값:{}",updateCnt );
			}	
		else {
			logger.debug("사용자 등록 실패 updateCnt 값:{}",updateCnt );
		}

		
		int insertCnt = 0;
		try {
			insertCnt= voteservice.votecheck(votevo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (insertCnt == 1) {
			logger.debug("사용자 등록 성공 insertCnt 값:{}",insertCnt );
			}	
		else {
			logger.debug("사용자 등록 실패 insertCnt 값:{}",insertCnt );
		}
		List<VoteVo>voteDelist=voteservice.votecont(voteno);
		List<VoteVo>votecontlist= voteservice.votecontlist(voteno);
		
				
		model.addAttribute("voteDelist",voteDelist);
		model.addAttribute("votecontlist",votecontlist);
		
		return"jsonView";
	}
}
