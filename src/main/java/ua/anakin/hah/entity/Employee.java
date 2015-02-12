package ua.anakin.hah.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Employee {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@NotBlank
	@Size(min=2, message = "First Name must be at least 2 characters!")
	@Column(name = "first_name")
	private String firstName;
	
	@NotBlank
	@Size(min=2, message = "Last Name must be at least 2 characters!")
	@Column(name = "last_name")
	private String lastName;
	
	
	@DecimalMin(value="0")
	private Double salary;
		
	@Temporal(TemporalType.DATE)
	@Column
	private Date birthdate;
	
	private Boolean active;
	
	@ManyToOne
	@JoinColumn(name="division_id")	
	private Division division;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Division getDivision() {
		return division;
	}

	public void setDivision(Division division) {
		this.division = division;
	}
	
	
}
