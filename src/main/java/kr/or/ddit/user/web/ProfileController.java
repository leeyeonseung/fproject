package kr.or.ddit.user.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.user.model.UsersVo;
import kr.or.ddit.user.service.UserService;

@Controller
@RequestMapping("profile")
public class ProfileController {
	
	@Resource(name = "userService")
	public UserService userService;

	@RequestMapping(path="picture")
	public void pictureView(HttpServletRequest request, HttpServletResponse response,
							String usid) throws IOException{
		response.setContentType("image");
		
		UsersVo usVo = userService.selectAllUser(usid);
		
		String filename ="";
		String path="";
		
		if(usVo.getProflphoto().equals("")) {
			path = request.getServletContext().getRealPath("/img/unknown.jpg");
			filename = "/img/unknown.jpg";
		}else {
			filename = usVo.getProflphoto();
//			path = "d:\\upload\\"+usVo.getProflphoto();
			path = usVo.getProflphoto();
		}
//		경로는 filename에서 subString 이나 split 으로 분류한 다음에 입력
		FileInputStream fis = new FileInputStream(path);
		ServletOutputStream sos = response.getOutputStream();
		
		byte[] buf = new byte[512];
		
		while(fis.read(buf) != -1) {
			sos.write(buf);			
		}
		
		fis.close();
		sos.close();
		
	}
	
	@RequestMapping(path = "uploadFile", method = {RequestMethod.POST})
	public String uploadF(HttpSession session, MultipartFile uploadFiles, Model model) {
		
		UsersVo userVo =  (UsersVo) session.getAttribute("S_USER");
		
		if(uploadFiles.getSize() > 0) {		
			String filename = "d:\\upload\\" + uploadFiles.getOriginalFilename();
//			String originalFilename = UUID.randomUUID().toString() + "." + originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
			
//			userVo.setFilename(originalFilename);
			userVo.setProflphoto(filename);
					
		try {
			File f = new File(filename);
			if(!f.exists()) {
				uploadFiles.transferTo(new File(filename));				
			}

			} catch(IllegalStateException | IOException e){		
				e.printStackTrace();
			}
		}
		
		int fileUp = 0;
		String sw = "";
		
		fileUp = userService.updateUserPhoto(userVo);

		if(fileUp == 1) {
			sw = "success";
		}else {
			sw = "fail";
		}
						
		model.addAttribute("sw", sw);
		
		return "jsonView";
	}
	
	@RequestMapping(path="removeProfile", method= {RequestMethod.POST})
	public String removeProf(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		UsersVo userVo = (UsersVo) session.getAttribute("S_USER");
		response.setContentType("image");
		String profile = "d:\\upload\\unknown.jpg";
		
		userVo.setProflphoto(profile);
		
		int res = 0;	
		String sw = "";
		res = userService.removeUserPhoto(userVo);
		
		if(res == 1) {
			sw = "success";
		}else {
			sw = "fail";
		}
		
			
		String path ="";
		path = request.getServletContext().getRealPath(profile);
		
		FileInputStream fis = new FileInputStream(profile);
		ServletOutputStream sos = response.getOutputStream();
		
		byte[] buf = new byte[512];
		
		while(fis.read(buf) != -1) {
			sos.write(buf);			
		}
		
		fis.close();
		sos.close();
		
		return "jsonView";
	}
}
