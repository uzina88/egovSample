package egovframework.com.studentMng.service;

import java.util.HashMap;
import java.util.List;

public interface StudentMngService {
	// List 전체 조회
	public List<HashMap<String, Object>> selectStudentMngList();

	// info 상세 조회
	public HashMap<String, Object> selectStudentInfo(int studentId);

	// insert 등록
	public int insertMngSchoolInfoPage(HashMap<String, Object> paramMap);
	

}