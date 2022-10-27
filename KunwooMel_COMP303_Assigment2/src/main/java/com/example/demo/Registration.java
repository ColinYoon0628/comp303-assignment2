package com.example.demo;

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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="registrationid")
	private int registrationId;
	@Column(name="studentid")
	private int studentId;
	@Column(name="sportname")
	private String sportName;
	@Column(name="coachname")
	private String coachName;
	@Column(name="startdate")
	private Date startDate;
	@Column(name="numberofshirts")
	private int numberOfShirts;
	@Column(name="numberofshorts")
	private int numberOfShorts;
	@Column(name="amountpaid")
	private int amountPaid;
	
	
	public Registration(Date startDate, int numberOfShirts, int numberOfShorts, int amountPaid) {
		super();
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


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
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


	public int getAmountPaid() {
		return amountPaid;
	}


	public void setAmountPaid(int amountPaid) {
		this.amountPaid = amountPaid;
	}
	
	
	
	
	
}
