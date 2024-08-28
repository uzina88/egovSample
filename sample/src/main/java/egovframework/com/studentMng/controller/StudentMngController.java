package egovframework.com.studentMng.controller;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.schoolMng.service.SchoolMngService;
import egovframework.com.studentMng.service.StudentMngService;

@Controller
public class StudentMngController {
	
	@Resource(name="StudentMngService")
	private StudentMngService studentMngService;
	
	// schoolMng 서비스 가지고 옴
	@Resource(name="SchoolMngService")
	private SchoolMngService schoolMngService;
	
	
	@RequestMapping("/studentMng/getStudentMngList.do")
	public String getStudentMngList() {
		return "studentMng/studentMngList";
	}
	
	@RequestMapping("/studentMng/selectStudentMngList.do")
	public ModelAndView selectStudentMngList() {
		ModelAndView mv = new ModelAndView();
		
		List<HashMap<String, Object>> list = studentMngService.selectStudentMngList();
		
		mv.addObject("list", list);
		mv.setViewName("jsonView");
		return mv;
	}
	
	// studentInfo 조회
	@RequestMapping("/studentMng/getStudentInfo.do")
	public ModelAndView getStudentInfo(@RequestParam(name="studentId") int studentId) {
		ModelAndView mv = new ModelAndView();
		
		HashMap<String, Object> studentInfo = studentMngService.selectStudentInfo(studentId);
		
		mv.addObject("studentInfo", studentInfo);
		mv.setViewName("studentMng/studentInfo");
		return mv;
	}
	
	// 화면 이동 (selct 옵션 값 조회)
	@RequestMapping("/studentMng/registStudentMng.do")
	public String registStudentMng(Model model) {
		
		List<HashMap<String, Object>> schoolList = schoolMngService.selectSchoolList();
		model.addAttribute("schoolList",schoolList);
		
		return "studentMng/studentMngRegister";
	}
	
	// 학생정보 입력
	@RequestMapping("/studentMng/insertMngSchoolInfoPage.do")
	public ModelAndView insertMngSchoolInfoPage(@RequestParam HashMap<String, Object> paramMap) {
		ModelAndView mv = new ModelAndView();
		
		int resultChk = 0;
		resultChk = studentMngService.insertMngSchoolInfoPage(paramMap);
		
		mv.addObject("resultChk", resultChk);
		mv.setViewName("jsonView");
		return mv;
	}

}