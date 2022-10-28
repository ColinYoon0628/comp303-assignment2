/*
 * Name: Mel Vincent Anonuevo & Kunwoo Yoon
 * ID#: 301167069 &
 * Date: Oct 28, 2022
 * */

package com.example.demo;

public class User {
	String userName;
	String userPassword;
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
	public User() {}
	public User(String userName, String userPassword) {
		super();
		this.userName = userName;
		this.userPassword = userPassword;
	}
	
}
