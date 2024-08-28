package egovframework.com.schoolMng.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.schoolMng.service.SchoolMngService;

@Controller
public class SchoolMngController {

	@Resource(name="SchoolMngService")
	private SchoolMngService schoolMngService;
	
	// schoolList 조회
	@RequestMapping("/schoolMng/getSchoolList.do")
	public String getSchoolList(Model model) {
		
		List<HashMap<String, Object>> schoolList = schoolMngService.selectSchoolList();
		model.addAttribute("schoolList", schoolList);
		
		return "schoolMng/schoolList";
	}
	
	// schoolInfo 조회
	@RequestMapping("/schoolMng/getSchoolInfo.do")
	public ModelAndView getSchoolInfo(@RequestParam(name="schoolId") int schoolId) {
		ModelAndView mv = new ModelAndView();
		
		HashMap<String, Object> schoolInfo = schoolMngService.selectSchoolInfo(schoolId);
		
		mv.addObject("schoolInfo", schoolInfo);
		mv.setViewName("schoolMng/schoolInfo");
		return mv;
	}
	
	//schoolRegister.jsp 연결
	@RequestMapping("/schoolMng/registerSchool.do")
	public String registerSchool(@RequestParam HashMap<String, Object> paramMap, Model model) {
		if(!paramMap.isEmpty()) { // 수정
		//paramMap이 비워져 있지 않을 때
			int schoolId = Integer.parseInt(paramMap.get("schoolId").toString());
			HashMap<String, Object> schoolInfo = schoolMngService.selectSchoolInfo(schoolId);
			model.addAttribute("schoolInfo", schoolInfo);
			model.addAttribute("flag", "U");
		} else { //등록
			model.addAttribute("flag", "I");
		}
		return "schoolMng/schoolRegister";
	}
	
	// 입력, 수정 화면
	@RequestMapping("/schoolMng/insertMngSchoolInfo.do")
	public ModelAndView insertMngSchoolInfo(@RequestParam HashMap<String, Object> paramMap) {
		ModelAndView mv = new ModelAndView();
		
		int resultChk = 0;
		resultChk = schoolMngService.insertMngSchoolInfo(paramMap);
		
		mv.addObject("resultChk", resultChk);
		mv.setViewName("jsonView");
		return mv;
	}
	
	// 삭제
	@RequestMapping("/schoolMng/deleteMngSchoolInfo.do")
	public ModelAndView deleteMngSchoolInfo(@RequestParam HashMap<String, Object> paramMap) {
		ModelAndView mv = new ModelAndView();
		
		int resultChk = 0;
		resultChk = schoolMngService.deleteMngSchoolInfo(paramMap);
		mv.addObject("resultChk", resultChk); // schoolDelete 데이터 변수
		
		mv.setViewName("jsonView");
		return mv;
	}	
	
	// 수정
	@RequestMapping("/schoolMng/updateMngSchoolInfo.do")
	public ModelAndView updateMngSchoolInfo(@RequestParam HashMap<String, Object> paramMap) {
		ModelAndView mv = new ModelAndView();
		
		int resultChk = 0;
		resultChk = schoolMngService.updateMngSchoolInfo(paramMap);
		mv.addObject("resultChk", resultChk); // schoolDelete 데이터 변수
		
		mv.setViewName("jsonView");
		return mv;
	}	
	
}