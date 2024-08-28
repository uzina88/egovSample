package egovframework.com.schoolMng.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("SchoolMngDAO")
public class SchoolMngDAO extends EgovAbstractMapper{
	
	public List<HashMap<String, Object>> selectSchoolList(){
		return selectList("selectSchoolMngList");
	}
	
	public HashMap<String, Object> selectSchoolInfo(int schoolIdx){
		return selectOne("selectSchoolMngInfo", schoolIdx);
	}

	// 입력
	public int insertMngSchoolInfo(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return insert("insertMngSchoolInfo", paramMap);
	}

	// 삭제
	public int deleteMngSchoolInfo(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return delete("deleteMngSchoolInfo", paramMap);
	}

	// 수정
	public int updateMngSchoolInfo(HashMap<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return update("updateMngSchoolInfo", paramMap);
	}

}