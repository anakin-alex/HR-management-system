package ua.anakin.hah.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.anakin.hah.entity.Division;
import ua.anakin.hah.service.DivisionService;
import ua.anakin.hah.service.EmployeeService;

@Controller
public class EditorController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private DivisionService divisionService;
	
	@RequestMapping("/remove-employee/{id}")
	public String removeEmployee(@PathVariable long id) {
		employeeService.delete(id);
		return "redirect:/index.html";
	}
	
	@RequestMapping("/edit-employee/{id}")
	public String editEmployeePage(Model model, @PathVariable long id) {
		model.addAttribute("employee", employeeService.findOne(id));
		return "edit-employee";
	}	
	
	@ModelAttribute("create-division")
	public Division createDivision() {
		return new Division();
	}
	
	@RequestMapping("/create-division")
	public String showCreateDivisionPage() {
		return "create-division";
	}
	
	@RequestMapping(value="/create-division", method = RequestMethod.POST)
	public String executeCreateDivision(@ModelAttribute("create-division") Division division) {
		divisionService.save(division);
		return "redirect:/create-division.html?success=true";
	}
	
}
