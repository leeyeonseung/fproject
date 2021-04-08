package kr.or.ddit.Drive.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.Drive.service.DriveService;
import kr.or.ddit.common.util.StringUtils;
import kr.or.ddit.model.DriveVo;
import kr.or.ddit.util.FileUtil;

@RequestMapping("drive")
@Controller
public class LeeProjectController {

	private static final Logger logger = LoggerFactory.getLogger(LeeProjectController.class);
	@Resource(name = "DriveService")
	public DriveService DriveService;
	
	
	//파일 전체조회
	@RequestMapping("fileList")
	public String fileList(String prjctno ,Model model) {
		prjctno="PJ2103006";
		
		logger.debug("파일리스트통과");
		List<DriveVo> filelist=DriveService.selectallfile(prjctno);
		
		
		logger.debug("filelistaaa:",filelist);
		
		model.addAttribute("filelist", filelist);
		
		return "pms_col/drive";
	}
	//폴더안 파일조회
	@RequestMapping("foldfileList")
	public String fileList(DriveVo drivevo,Model model) {
		
		drivevo.setPrjctno("PJ2103006");
		logger.debug("폴더파일리스트통과:{}",drivevo);
		List<DriveVo> filelist=DriveService.selectallfile(drivevo);
		
		
		logger.debug("filelistaaa:",filelist);
		
		model.addAttribute("filelist", filelist);
		model.addAttribute("foldername",drivevo.getFlpth());
		
		
		return "pms_col/drive";
	}
	
	
	//이미지 다운로드
	@RequestMapping("profileDownload")
	public void profileDownload(DriveVo driveVo,HttpServletResponse resp,HttpServletRequest req) {
		DriveVo drive= DriveService.selectfile(driveVo);
		
		logger.debug("driveVo확인용:{}",drive);
		
		

		
		
		String fileNm = drive.getFilenm();
		String browser = "";

		String userAgent = req.getHeader("User-Agent");
		if (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1 // IE11
				|| userAgent.indexOf("Edge") > -1) {
			browser = "MSIE";
		} else if (userAgent.indexOf("Chrome") > -1) {
			browser = "Chrome";
		} else if (userAgent.indexOf("Opera") > -1) {
			browser = "Opera";
		} else if (userAgent.indexOf("Safari") > -1) {
			browser = "Safari";
		} else if (userAgent.indexOf("Firefox") > -1) {
			browser = "Firefox";
		}
		
		
		String reFileNm = null;
		try {
			if (browser.equals("MSIE") || browser.equals("Trident") || browser.equals("Edge")) {
				reFileNm = URLEncoder.encode(fileNm, "UTF-8").replaceAll("\\+", "%20");
			} else {
				if (browser.equals("Chrome")) {
					StringBuffer sb = new StringBuffer();
					for (int i = 0; i < fileNm.length(); i++) {
						char c = fileNm.charAt(i);
						if (c > '~') {
							sb.append(URLEncoder.encode(Character.toString(c), "UTF-8"));
						} else {
							sb.append(c);
						}
					}
					reFileNm = sb.toString();
				} else {
					reFileNm = new String(fileNm.getBytes("UTF-8"), "ISO-8859-1");
				}
				if (browser.equals("Safari") || browser.equals("Firefox"))
					reFileNm = URLDecoder.decode(reFileNm);
			}
		} catch (Exception e) {
		}
		
		logger.debug("다운확인:{}",reFileNm);

		resp.setContentType("application/octet-stream; charset=UTF-8"); 
		resp.setHeader("Content-Description", "file download"); 
		resp.setHeader("Content-Disposition", "attachment; filename=\"".concat(reFileNm).concat("\""));
		resp.setHeader("Content-Transfer-Encoding", "binary");

		
		
		
		
		
		//resp.setHeader("Content-Disposition", "attachment; filename="+drive.getFilenm()); 
		// userid 파라미터를 이용하여
		// userservice 객체를 통해 사용자의 사진 파일 이름을 획득
		// 파일 입출력을 통해 사진을 읽어들여 resp객체의 outputStream으로 응답 생성
		resp.setContentType("image");
		String path="";
		if(drive.getFilenm()==null) {
			path= req.getServletContext().getRealPath("/image/unknown.png");
		}else {
			if(drive.getFlpth()!=null) {
			
			path ="d:\\upload\\"+drive.getFlpth()+"\\"+drive.getRfilenm();
			}else {
				path ="d:\\upload\\"+drive.getRfilenm();
				
			}
		}
			
		try {
			FileInputStream fis =new FileInputStream(path);
			ServletOutputStream sos= resp.getOutputStream();
			
			byte[] buff= new byte[512];
			while(fis.read(buff)!=-1) {
				sos.write(buff);
			}
			fis.close();
			sos.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}
	//파일 다운로드
	@RequestMapping("fileDownload")
	public void fileDownload(DriveVo driveVo,HttpServletResponse resp,HttpServletRequest req) {
		DriveVo drive= DriveService.selectfile(driveVo);
		
		logger.debug("driveVo확인용:{}",drive);
		
		
		
		String fileNm = drive.getFilenm();
		String browser = "";

		String userAgent = req.getHeader("User-Agent");
		if (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1 // IE11
				|| userAgent.indexOf("Edge") > -1) {
			browser = "MSIE";
		} else if (userAgent.indexOf("Chrome") > -1) {
			browser = "Chrome";
		} else if (userAgent.indexOf("Opera") > -1) {
			browser = "Opera";
		} else if (userAgent.indexOf("Safari") > -1) {
			browser = "Safari";
		} else if (userAgent.indexOf("Firefox") > -1) {
			browser = "Firefox";
		}
		
		
		String reFileNm = null;
		try {
			if (browser.equals("MSIE") || browser.equals("Trident") || browser.equals("Edge")) {
				reFileNm = URLEncoder.encode(fileNm, "UTF-8").replaceAll("\\+", "%20");
			} else {
				if (browser.equals("Chrome")) {
					StringBuffer sb = new StringBuffer();
					for (int i = 0; i < fileNm.length(); i++) {
						char c = fileNm.charAt(i);
						if (c > '~') {
							sb.append(URLEncoder.encode(Character.toString(c), "UTF-8"));
						} else {
							sb.append(c);
						}
					}
					reFileNm = sb.toString();
				} else {
					reFileNm = new String(fileNm.getBytes("UTF-8"), "ISO-8859-1");
				}
				if (browser.equals("Safari") || browser.equals("Firefox"))
					reFileNm = URLDecoder.decode(reFileNm);
			}
		} catch (Exception e) {
		}
		
		logger.debug("다운확인:{}",reFileNm);

		resp.setContentType("application/octet-stream; charset=UTF-8"); 
		resp.setHeader("Content-Description", "file download"); 
		resp.setHeader("Content-Disposition", "attachment; filename=\"".concat(reFileNm).concat("\""));
		resp.setHeader("Content-Transfer-Encoding", "binary");

		
		
		
		//resp.setHeader("Content-Disposition", "attachment; filename="+drive.getFilenm()); 
		// userid 파라미터를 이용하여
		// userservice 객체를 통해 사용자의 사진 파일 이름을 획득
		// 파일 입출력을 통해 사진을 읽어들여 resp객체의 outputStream으로 응답 생성
		resp.setContentType("image");
		String path="";
		if(drive.getFilenm()==null) {
			path= req.getServletContext().getRealPath("/image/unknown.png");
		}else {
			if(drive.getFlpth()!=null) {
				
				path ="d:\\upload\\"+drive.getFlpth()+"\\"+drive.getRfilenm();
			}else {
				path ="d:\\upload\\"+drive.getRfilenm();
				
			}
		}
		
		try {
			FileInputStream fis =new FileInputStream(path);
			ServletOutputStream sos= resp.getOutputStream();
			
			byte[] buff= new byte[512];
			while(fis.read(buff)!=-1) {
				sos.write(buff);
			}
			fis.close();
			sos.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}
	
	//이미지 파일 출력
	@RequestMapping("profile")
	public void profile(HttpServletResponse resp, DriveVo driveVo, HttpServletRequest req) {
		resp.setContentType("image");
		
		logger.debug("driveVO:{}",driveVo);
		
		

		 DriveVo drive= DriveService.selectfile(driveVo);
		 
		 
		String path = "";
		if (drive.getRfilenm() == null) {
			path = req.getServletContext().getRealPath("/image/unknown.png");
		} else {
			
			if(drive.getFlpth()!=null) {
				
				path ="d:\\upload\\"+drive.getFlpth() +"\\" + drive.getRfilenm();
				
			}else {
				path ="d:\\upload\\" + drive.getRfilenm();
			}
			
		}
		
		logger.debug("pathaa:{}", path);

		try {
			FileInputStream fis = new FileInputStream(path);
			ServletOutputStream sos = resp.getOutputStream();

			byte[] buff = new byte[512];
			while (fis.read(buff) != -1) {
				sos.write(buff);
			}
			fis.close();
			sos.close();

		} catch (Exception e) {

		}

	}
	
	//파일업로드
	@RequestMapping("upfile")
	public String upfile(String prjctno, DriveVo driveVo, HttpServletRequest req, HttpServletResponse resp, MultipartFile profile)  {
		prjctno="PJ2103006";
		logger.debug("업파일 통과하는지 확인");
		
		String filename = "";
		String realfilename = "";
		if (profile.getSize() > 0) {
			filename = profile.getOriginalFilename();
			String fileExtension = FileUtil.getFileExtension(filename);
			// brown /brown.png
			realfilename = UUID.randomUUID().toString()+"." + fileExtension;
			try {
				if(driveVo.getFlpth()!=null) {
					profile.transferTo(new File("d:\\upload\\"+driveVo.getFlpth()+"\\"+ realfilename));
				}else {
					profile.transferTo(new File("d:\\upload\\"+ realfilename));
				}
			} catch (IOException e) {
				e.printStackTrace();
			}

			
			/** 모듈화하여 체크하도록 수정 */ 
			
			// if(StringUtils.equalsOr(type, "jpg", "jpeg", "jpe", "jfif", "gif", "tif", "tiff", "png")){
			//   driveVo.setFilety("img");
			// }else{
			//   driveVo.setFilety("file");
			// }
			
			String type=FileUtil.getFileExtension(filename);
			//if(type.equals("jpg") ||  type.equals("jpeg") ||  type.equals("jpe") ||  type.equals("jfif") ||  type.equals("gif") ||  type.equals("tif") ||  type.equals("tiff") ||   type.equals("png") ||type.equals("heic")) {
			if(StringUtils.equalsOr(type.toLowerCase(), "jpg", "jpeg", "jpe", "jfif", "gif", "tif", "tiff", "png")){
				driveVo.setFilety("img");
			}else {
				driveVo.setFilety("file");
			}
			
			driveVo.setPrjctno(prjctno);
			driveVo.setDeleteat(0);
			driveVo.setFilenm(filename);
			driveVo.setRfilenm(realfilename);
		}
		DriveService.upfile(driveVo);
		
		
		logger.debug("파일업로드 드라이브 확인:{}",driveVo);
		
		if(!driveVo.getFlpth().equals("")) {
			
			return "redirect:/drive/foldfileList?flpth="+driveVo.getFlpth()+"&prjctno="+prjctno;
		}else {
			
			return "redirect:/drive/fileList?prjctno="+prjctno;
			
		}
		
	}
	
	//파일삭제
	@RequestMapping("defile")
	public String defile( DriveVo driveVo) {
		String prjctno="PJ2103006";
		
		driveVo.setPrjctno("PJ2103006");
		DriveService.defile(driveVo);
		
		
		if(!driveVo.getFlpth().equals("")) {
			
			return "redirect:/drive/foldfileList?flpth="+driveVo.getFlpth()+"&prjctno="+prjctno;
		}else {
			
			return "redirect:/drive/fileList?prjctno="+prjctno;
		}
		
	}
	
	@RequestMapping("upfolder")
	public String upfolder(String prjctno,DriveVo driveVo, Model model) {
		
		logger.debug("업폴더 통과하는지 확인");
		prjctno="PJ2103006";
		File folder=null;
		
		if(driveVo.getFlpth()!=null) {
			 folder = new File("d:\\upload\\"+driveVo.getFlpth()+"\\"+driveVo.getFilenm());
		}
			 folder = new File("d:\\upload\\"+driveVo.getFilenm());
			
		
		
		if (!folder.exists()) {
			try{
				folder.mkdir(); //폴더 생성합니다.
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}  
				model.addAttribute("validation","o");
			
	         }else {
	        	 model.addAttribute("validation","x");
	        	 
		}
		
		driveVo.setDeleteat(0);
		driveVo.setPrjctno(prjctno);
		driveVo.setFilety("fold");
		
		logger.debug("driveVOoo{}:",driveVo);
		DriveService.upfolder(driveVo);
		
		if(!driveVo.getFlpth().equals("")) {
			
			return "redirect:/drive/foldfileList?flpth="+driveVo.getFlpth()+"&prjctno="+prjctno;
		}else {
			
			return "redirect:/drive/fileList?prjctno="+prjctno;
			
		}
		
	}
}
