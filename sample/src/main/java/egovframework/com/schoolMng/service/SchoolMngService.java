package egovframework.com.schoolMng.service;

import java.util.HashMap;
import java.util.List;

public interface SchoolMngService {
	public List<HashMap<String, Object>> selectSchoolList();
	
	public HashMap<String, Object> selectSchoolInfo(int schoolIdx);

	// 입력
	public int insertMngSchoolInfo(HashMap<String, Object> paramMap);


	// 삭제
	public int deleteMngSchoolInfo(HashMap<String, Object> paramMap);

	// 수정
	public int updateMngSchoolInfo(HashMap<String, Object> paramMap);

	
}