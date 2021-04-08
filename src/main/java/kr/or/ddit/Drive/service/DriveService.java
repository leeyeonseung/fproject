package kr.or.ddit.Drive.service;

import java.util.List;

import kr.or.ddit.model.DriveVo;

public interface DriveService {

	DriveVo selectfile(DriveVo driveVo);

	List<DriveVo> selectallfile(String prjctno);

	int upfile(DriveVo driveVo);

	int defile(DriveVo driveVo);

	int upfolder(DriveVo driveVo);

	List<DriveVo> selectallfile(DriveVo drivevo);


}
