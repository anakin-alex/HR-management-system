package ua.anakin.hah.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.anakin.hah.service.DivisionService;

@Controller
@RequestMapping("/divisions")
public class DivisionController {

	@Autowired
	private DivisionService divisionService;
	
	@RequestMapping
	public String showDivisionsPage(Model model) {
		model.addAttribute("divisions", divisionService.findAll());
		return "divisions";
	}
	
//	@RequestMapping("/employees/{id}")
//	public String employeeDetail(Model model, @PathVariable long id) {
//		model.addAttribute("employee", divisionService.findOne(id));
//		return "employee-detail";
//	}
	
	@RequestMapping("/remove/{id}")
	public String removeDivision(@PathVariable long id) {
		divisionService.delete(id);
		return "redirect:/divisions.html";
	}
	
}
