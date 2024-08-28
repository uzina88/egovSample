package egovframework.com.school.controller;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import egovframework.com.school.service.SchoolService;

@Controller
public class SchoolController {
	
	// Service와 연결
	@Resource(name="SchoolService")
	private SchoolService schoolService;
	
	// 주소 지정
	@RequestMapping("/school/getSchoolList.do")
	public String getSchoolList(Model model) {
		
		List<HashMap<String, Object>> list = schoolService.selectSchoolList();
		model.addAttribute("schoolList", list);
		// servlet.xml에 경로 설정 해놓음
		return "school/schoolList";
	}

// 	(@RequestParam(name="schoolIdx") ID 값 1개로 진행
//	@RequestMapping("/school/getSchoolInfo.do")
//	public ModelAndView getSchollInfo(@RequestParam(name="schoolIdx") int schoolIdx) {
//		
//		(1) ModelAndView mv = new ModelAndView("school/schoolInfo");
//		(2) 위에 부분을 이렇게도 가능(어떤화면을 보여줄지) mv.setViewName("school/schoolInfo");
	
//		HashMap<String, Object> schoolInfo = schoolService.selectSchoolInfo(schoolIdx);
//		mv.addObject("schoolInfo", schoolInfo);
//		return mv;
//	}
	
	// json 데이터로 변경하기
	@RequestMapping("/school/getSchoolInfo.do")
	public ModelAndView getSchollInfo(@RequestParam HashMap<String, Object> paramMap) {
		
		ModelAndView mv = new ModelAndView();
		
		int schoolIdx = Integer.parseInt(paramMap.get("schoolId").toString());
		HashMap<String, Object> schoolInfo = schoolService.selectSchoolInfo(schoolIdx);
		mv.addObject("schoolInfo", schoolInfo);
		
		mv.setViewName("jsonView");
		return mv;
	}
	
	// (@RequestParam HashMap<String, Object> paramMap) 모든 파라미터 값 불러올때
	@RequestMapping("/school/insertSchoolInfo.do")
	public ModelAndView insertSchoolInfo(@RequestParam HashMap<String, Object> paramMap) {
		ModelAndView mv = new ModelAndView();
		
		int resultChk = 0;
		resultChk = schoolService.insertSchoolInfo(paramMap);
		
		mv.addObject("resultChk", resultChk);
		mv.setViewName("jsonView");
		return mv;
	}
	
	// 삭제
	@RequestMapping("/school/deleteSchoolInfo.do")
	public ModelAndView deleteSchoolInfo(@RequestParam HashMap<String, Object> paramMap) {
		ModelAndView mv = new ModelAndView();
		
		int schoolIdx = Integer.parseInt(paramMap.get("schoolId").toString());
		int schoolDelete = schoolService.deleteSchoolInfo(schoolIdx);
		mv.addObject("schoolDelete", schoolDelete); // schoolDelete 데이터 변수
		
		mv.setViewName("jsonView");
		return mv;
	}		
	
	
}
