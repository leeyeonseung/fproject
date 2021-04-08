package kr.or.ddit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.AbstractView;

import kr.or.ddit.model.TaskVo;

@RequestMapping
@Controller
public class ExcelDownloadView extends AbstractView{
	
	private static final Logger logger = LoggerFactory.getLogger(ExcelDownloadView.class);
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("application/vnd.ms-excel;charset=utf-8");
		response.setHeader("Content-Disposition","attachement; filename=test.xlsx.");
		// header:List<String>
		// data:List<TaskVo>
		
		List<String> header = (List<String>) model.get("header");
		List<TaskVo> data = (List<TaskVo>) model.get("data");
		
		//excel파일 생성 
		XSSFWorkbook book = new XSSFWorkbook();
		Sheet sheet = book.createSheet("users");
//		행을 만들수있다
		int rownum=0;
		int colnum=0;
		Row row = sheet.createRow(rownum++);
		
		for(String h :header) {
			Cell cell=(row.createCell(colnum++));
			cell.setCellValue(h);
		}
		
		for(TaskVo user :data) {
			colnum=0;
			Row r=sheet.createRow(rownum++);
			r.createCell(colnum++).setCellValue(user.getPrjctno());
			r.createCell(colnum++).setCellValue(user.getJobno());
			r.createCell(colnum++).setCellValue(user.getJobsttus());
			r.createCell(colnum++).setCellValue(user.getJobpriort());
			r.createCell(colnum++).setCellValue(user.getJobnm());
			
			r.createCell(colnum++).setCellValue(user.getJobcn());
			r.createCell(colnum++).setCellValue(user.getPrgsdo());
			r.createCell(colnum++).setCellValue(user.getManager()+"외"+user.getMcount()+"명");
			r.createCell(colnum++).setCellValue(user.getJobwrter());
			r.createCell(colnum++).setCellValue(user.getJobbgnde());
			
			r.createCell(colnum++).setCellValue(user.getJobclosde());
			r.createCell(colnum++).setCellValue(user.getJobrgsde());
			logger.debug(""+user.getJobbgnde());
		}
		
		book.write(response.getOutputStream());
	}

}
