package com.example.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student")
public class Student {
	@Id
	@Column(name="studentid")
	public int studentId;
	@Column(name="username")
	public String userName;
	@Column(name="userpassword")
	public String userPassword;
	@Column(name="firstname")
	public String firstname;
	@Column(name="lastname")
	public String lastname;
	@Column(name="address")
	public String address;
	@Column(name="city")
	public String city;
	@Column(name="postalcode")
	public String postalCode;
	@Column(name="stdphone")
	public String stdPhone;
	@Column(name="doctorname")
	public String doctorName;
	@Column(name="docphone")
	public String docPhone;
	
	public Student()
	{}
	
	public Student(int studentId, String userName, String userPassword, String firstname, String lastname,
			String address, String city, String postalCode, String stdPhone, String doctorName, String docPhone) {
		super();
		this.studentId = studentId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.city = city;
		this.postalCode = postalCode;
		this.stdPhone= stdPhone;
		this.doctorName = doctorName;
		this.docPhone = docPhone;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getDocPhone() {
		return docPhone;
	}

	public void setDocPhone(String docPhone) {
		this.docPhone = docPhone;
	}

	public String getStdPhone() {
		return stdPhone;
	}

	public void setStdPhone(String stdPhone) {
		this.stdPhone = stdPhone;
	}
	
}
