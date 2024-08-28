package egovframework.com.schoolMng.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.schoolMng.service.SchoolMngService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("SchoolMngService")
public class SchoolMngServiceImpl extends EgovAbstractServiceImpl implements SchoolMngService{

	@Resource(name="SchoolMngDAO")
	private SchoolMngDAO schoolMngDAO;
	
	@Override
	public List<HashMap<String, Object>> selectSchoolList() {
		// TODO Auto-generated method stub
		
		List<HashMap<String, Object>> list = schoolMngDAO.selectSchoolList();		
		return list;
	}

	@Override
	public HashMap<String, Object> selectSchoolInfo(int schoolIdx) {
		// TODO Auto-generated method stub
		HashMap<String, Object> schoolInfo = schoolMngDAO.selectSchoolInfo(schoolIdx);	
		return schoolInfo;
	}

	// 입력
	@Override
	public int insertMngSchoolInfo(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return schoolMngDAO.insertMngSchoolInfo(paramMap);
	}

	// 삭제
	@Override
	public int deleteMngSchoolInfo(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return schoolMngDAO.deleteMngSchoolInfo(paramMap);
	}

	// 수정
	@Override
	public int updateMngSchoolInfo(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return schoolMngDAO.updateMngSchoolInfo(paramMap);
	}



	
}