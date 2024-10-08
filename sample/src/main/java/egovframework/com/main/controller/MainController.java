package egovframework.com.main.controller;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.main.service.MainService;

@Controller
public class MainController {
	
	@Resource(name="MainService")
	private MainService mainService;
	
	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/main/student.do")
	public ModelAndView student() {
		ModelAndView mv = new ModelAndView("main/student");
		List<HashMap<String, Object>> list = mainService.selectStudentInfo();
		mv.addObject("list",list);
		
		return mv;
	}
	
	@RequestMapping("/main/score.do")
	public ModelAndView score() {
		ModelAndView mv2 = new ModelAndView("main/score");
		List<HashMap<String, Object>> scorelist = mainService.selectScoreInfoTest();
		mv2.addObject("scorelist",scorelist);
		
		return mv2;
	}
	
	
	
}
