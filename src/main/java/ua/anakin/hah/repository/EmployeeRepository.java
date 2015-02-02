package ua.anakin.hah.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.anakin.hah.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long>{


}
