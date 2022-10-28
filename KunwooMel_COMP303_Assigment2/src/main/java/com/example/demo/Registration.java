package com.example.demo;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Registration")
public class Registration {
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="registrationid")
	private int registrationId;
	@Column(name="studentid")
	private int studentId;
	@Column(name="sportname")
	private String sportName;
	@Column(name="coachname")
	private String coachName;
	@Column(name="startdate")
	private LocalDate startDate;
	@Column(name="numberofshirts")
	private int numberOfShirts;
	@Column(name="numberofshorts")
	private int numberOfShorts;
	@Column(name="amountpaid")
	private double amountPaid;
	
	public Registration() {}
	

	public Registration(int registrationId, int studentId, String sportName, String coachName, LocalDate startDate,
			int numberOfShirts, int numberOfShorts, double amountPaid) {
		super();
		this.registrationId = registrationId;
		this.studentId = studentId;
		this.sportName = sportName;
		this.coachName = coachName;
		this.startDate = startDate;
		this.numberOfShirts = numberOfShirts;
		this.numberOfShorts = numberOfShorts;
		this.amountPaid = amountPaid;
	}


	public int getRegistrationId() {
		return registrationId;
	}

	public void setRegistrationId(int registrationId) {
		this.registrationId = registrationId;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getSportName() {
		return sportName;
	}

	public void setSportName(String sportName) {
		this.sportName = sportName;
	}

	public String getCoachName() {
		return coachName;
	}

	public void setCoachName(String coachName) {
		this.coachName = coachName;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public int getNumberOfShirts() {
		return numberOfShirts;
	}

	public void setNumberOfShirts(int numberOfShirts) {
		this.numberOfShirts = numberOfShirts;
	}


	public int getNumberOfShorts() {
		return numberOfShorts;
	}


	public void setNumberOfShorts(int numberOfShorts) {
		this.numberOfShorts = numberOfShorts;
	}


	public double getAmountPaid() {
		return amountPaid;
	}


	public void setAmountPaid(double amountPaid) {
		this.amountPaid = amountPaid;
	}
}