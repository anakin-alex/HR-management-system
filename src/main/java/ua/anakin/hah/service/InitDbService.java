package ua.anakin.hah.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import ua.anakin.hah.entity.Division;
import ua.anakin.hah.entity.Employee;
import ua.anakin.hah.entity.Role;
import ua.anakin.hah.entity.User;
import ua.anakin.hah.repository.DivisionRepository;
import ua.anakin.hah.repository.EmployeeRepository;
import ua.anakin.hah.repository.RoleRepository;
import ua.anakin.hah.repository.UserRepository;

@Transactional
@Service
public class InitDbService {
	
	
	@Autowired
	private DivisionRepository divisionRepository;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@PostConstruct
	public void init() throws ParseException {
		
		Role roleReader = new Role();
		roleReader.setName("ROLE_READER");
		roleRepository.save(roleReader);
		
		Role roleEditor = new Role();
		roleEditor.setName("ROLE_EDITOR");
		roleRepository.save(roleEditor);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		List<Role> readerRoles = new ArrayList<Role>();
		readerRoles.add(roleReader);
		
		List<Role> editorRoles = new ArrayList<Role>();
		editorRoles.add(roleReader);
		editorRoles.add(roleEditor);
		
		User userReader = new User();
		userReader.setEnabled(true);
		userReader.setName("reader");
		userReader.setPassword(encoder.encode("reader"));		
		userReader.setRoles(readerRoles);
		userRepository.save(userReader);
		
		User userEditor = new User();
		userEditor.setEnabled(true);
		userEditor.setName("editor");
		userEditor.setPassword(encoder.encode("editor"));		
		userEditor.setRoles(editorRoles);
		userRepository.save(userEditor);
		
		Division humanResources = new Division();
		humanResources.setName("����� ������");
		divisionRepository.save(humanResources);
		
		Division accountsDepartment = new Division();
		accountsDepartment.setName("�����������");
		divisionRepository.save(accountsDepartment);
		
		Division logisticDepartment = new Division();
		logisticDepartment.setName("����� ���������");
		divisionRepository.save(logisticDepartment);
		
		Employee employee1 = new Employee();
		employee1.setFirstName("�����");
		employee1.setLastName("Ivanov");
		employee1.setSalary(5000d);
		employee1.setBirthdate(new SimpleDateFormat("dd.mm.yyyy").parse("01.02.1970"));
		employee1.setActive(true);
		employee1.setDivision(humanResources);
		employeeRepository.save(employee1);
		
		Employee employee2 = new Employee();
		employee2.setFirstName("�����");
		employee2.setLastName("Petrova");
		employee2.setSalary(3000d);
		employee2.setBirthdate(new SimpleDateFormat("dd.mm.yyyy").parse("24.08.1991"));
		employee2.setActive(true);
		employee2.setDivision(humanResources);
		employeeRepository.save(employee2);
		
		Employee employee3 = new Employee();
		employee3.setFirstName("�����");
		employee3.setLastName("Catty");
		employee3.setSalary(6000d);
		employee3.setBirthdate(new SimpleDateFormat("dd.mm.yyyy").parse("15.04.1966"));
		employee3.setActive(true);
		employee3.setDivision(accountsDepartment);
		employeeRepository.save(employee3);
		
		Employee employee4 = new Employee();
		employee4.setFirstName("�������");
		employee4.setLastName("Vetrova");
		employee4.setSalary(3000d);
		employee4.setBirthdate(new SimpleDateFormat("dd.mm.yyyy").parse("30.12.1982"));
		employee4.setActive(true);
		employee4.setDivision(accountsDepartment);
		employeeRepository.save(employee4);
		
		Employee employee5 = new Employee();
		employee5.setFirstName("������");
		employee5.setLastName("Alekseev");
		employee5.setSalary(2500d);
		employee5.setBirthdate(new SimpleDateFormat("dd.mm.yyyy").parse("05.10.1973"));
		employee5.setActive(false);
		employee5.setDivision(accountsDepartment);
		employeeRepository.save(employee5);		
		
	}
}
