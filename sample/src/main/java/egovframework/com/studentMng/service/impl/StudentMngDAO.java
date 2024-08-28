package egovframework.com.studentMng.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("StudentMngDAO")
public class StudentMngDAO extends EgovAbstractMapper{
	
	public List<HashMap<String, Object>> selectStudentMngList(){
		return selectList("selectStudentMngList");
	}

	public HashMap<String, Object> selectStudentInfo(int studentId) {
		// TODO Auto-generated method stub
		return selectOne("selectStudentInfo", studentId);
	}

	public int insertMngSchoolInfoPage(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return insert("insertMngSchoolInfoPage", paramMap);
	}
	


}