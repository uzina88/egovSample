package egovframework.com.school.service.impl;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import egovframework.com.school.service.SchoolService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("SchoolService")
public class SchoolServiceImpl extends EgovAbstractServiceImpl implements SchoolService{

	// DAO와 연결
	@Resource(name="SchoolDAO")
	private SchoolDAO schoolDAO;

	// SchoolServiceImpl 빨간줄 ADD 추가하면 자동 생성
	@Override
	public List<HashMap<String, Object>> selectSchoolList() {
		// TODO Auto-generated method stub
		
		List<HashMap<String, Object>> list = schoolDAO.selectSchoolList();
		return list;
		// return schoolDAO.selectSchoolList();
	}

	@Override
	public HashMap<String, Object> selectSchoolInfo(int schoolIdx) {
		// TODO Auto-generated method stub
		HashMap<String, Object> schoolInfo = schoolDAO.selectSchoolInfo(schoolIdx);
		return schoolInfo;
	}

	@Override
	public int insertSchoolInfo(HashMap<String, Object> paramMap) {
		return schoolDAO.insertSchoolInfo(paramMap);
	}

	@Override
	public int deleteSchoolInfo(int schoolIdx) {
		int schoolDelete = schoolDAO.deleteSchoolInfo(schoolIdx);
		return schoolDelete;
	}


}
