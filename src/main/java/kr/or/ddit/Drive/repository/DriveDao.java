package kr.or.ddit.Drive.repository;

import java.util.List;

import kr.or.ddit.model.DriveVo;

public interface DriveDao {

	DriveVo selectfile(DriveVo driveVo);

	List<DriveVo> selectallfile(String prjctno);

	int upfile(DriveVo driveVo);

	int defile(DriveVo driveVo);

	int upfolder(DriveVo driveVo);

	List<DriveVo> selectallfile(DriveVo drivevo);

}
