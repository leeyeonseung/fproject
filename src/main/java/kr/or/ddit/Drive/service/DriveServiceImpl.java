package kr.or.ddit.Drive.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.Drive.repository.DriveDao;
import kr.or.ddit.model.DriveVo;

@Service("DriveService")
public class DriveServiceImpl implements DriveService{

	@Resource(name = "DriveDao")
	public DriveDao DriveDao;


	@Override
	public DriveVo selectfile(DriveVo driveVo) {
		// TODO Auto-generated method stub
		return DriveDao.selectfile(driveVo);
	}


	@Override
	public List<DriveVo> selectallfile(String prjctno) {
		return DriveDao.selectallfile(prjctno);
	}


	@Override
	public int upfile(DriveVo driveVo) {
		return DriveDao.upfile(driveVo);
	}


	@Override
	public int defile(DriveVo driveVo) {
		return DriveDao.defile(driveVo);
	}


	@Override
	public int upfolder(DriveVo driveVo) {
		return DriveDao.upfolder(driveVo);
	}


	@Override
	public List<DriveVo> selectallfile(DriveVo drivevo) {
		return DriveDao.selectallfile(drivevo);
	}
}
