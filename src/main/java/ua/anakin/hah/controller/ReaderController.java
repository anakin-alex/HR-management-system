package ua.anakin.hah.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.anakin.hah.entity.Employee;
import ua.anakin.hah.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class ReaderController {

	@Autowired
	private EmployeeService employeeService;
	
//	@ModelAttribute("employee")
//	public Employee create() {
//		return new Employee();
//	}
	
//	@ModelAttribute("edit-employee")
//	public Employee update() {
//		return new Employee();
//	}
	
//	@RequestMapping
//	public String employees(Model model) {
//		model.addAttribute("employees", employeeService.findAll());
//		return "employees";
//	}
	
	@RequestMapping("/{id}")
	public String employeeDetail(Model model, @PathVariable long id) {
		model.addAttribute("employee", employeeService.findOne(id));
		return "employee-detail";
	}
	
	
	@RequestMapping("/employees/{id}")
	public String employeeDetailPage(Model model, @PathVariable long id) {
		model.addAttribute("employee", employeeService.findOne(id));
		return "employee-detail";
	}
	
	
	
//	@RequestMapping(value="/save/{id}", method=RequestMethod.POST)
//	public String updateEmployee(@ModelAttribute("employee") Employee employee) {
//		//model.addAttribute("employee", employeeService.findOne(id));
//		employeeService.save(employee);
//		return "/employees/{id}";
//	}
	
	
}
