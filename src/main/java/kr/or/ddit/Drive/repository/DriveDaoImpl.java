package kr.or.ddit.Drive.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.model.DriveVo;

@Repository("DriveDao")
public class DriveDaoImpl implements DriveDao{

	@Resource(name = "sqlSessionTemplate")
	public SqlSessionTemplate template;

	@Override
	public DriveVo selectfile(DriveVo driveVo) {
		return template.selectOne("drive.selectfile",driveVo);
	}

	@Override
	public List<DriveVo> selectallfile(String prjctno) {
		return template.selectList("drive.selectallfile",prjctno);
	}

	@Override
	public int upfile(DriveVo driveVo) {
		return template.insert("drive.upfile",driveVo);
	}

	@Override
	public int defile(DriveVo driveVo) {
		return template.update("drive.defile",driveVo);
	}

	@Override
	public int upfolder(DriveVo driveVo) {
		return template.insert("drive.upfile",driveVo);
	}

	@Override
	public List<DriveVo> selectallfile(DriveVo drivevo) {
		return template.selectList("drive.folderselectallfile",drivevo);
	}
	
}
