package ua.anakin.hah.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.anakin.hah.service.DivisionService;
import ua.anakin.hah.service.EmployeeService;

@Controller
@RequestMapping("/divisions")
public class DivisionController {

	@Autowired
	private DivisionService divisionService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping
	public String showDivisionsPage(Model model) {
		model.addAttribute("divisions", divisionService.findAllWithEmployees());
		return "divisions";
	}
	
	@RequestMapping("/remove/{id}")
	public String removeDivision(@PathVariable long id) {
		divisionService.delete(id);
		return "redirect:/divisions.html";
	}
	
}
