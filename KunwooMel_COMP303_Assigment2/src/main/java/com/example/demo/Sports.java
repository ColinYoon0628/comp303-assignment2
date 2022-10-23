package com.example.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Sport")
public class Sports {
	@Id
	@Column(name="sportid")
	private int studentId;
	@Column(name="sportname")
	private String sportName;
	@Column(name="duration")
	private int duration;
	@Column(name="fee")
	private double fee;
	@Column(name="coachname")
	private String coachName;
	
	public Sports()
	{
		
	}

	public Sports(int studentId, String sportName, int duration, double fee, String coachName) {
		super();
		this.studentId = studentId;
		this.sportName = sportName;
		this.duration = duration;
		this.fee = fee;
		this.coachName = coachName;
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

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public double getFee() {
		return fee;
	}

	public void setFee(double fee) {
		this.fee = fee;
	}

	public String getCoachName() {
		return coachName;
	}

	public void setCoachName(String coachName) {
		this.coachName = coachName;
	}
	
	

}
