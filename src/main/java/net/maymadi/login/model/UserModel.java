package net.maymadi.login.model;
import java.io.Serializable;
public class UserModel implements Serializable {
	/**
     * 
     */
	 private String username;
	 private String name;
	 private String password;
	 private String usertype;
	 
	 public String getUsername() {
	       return username;
	 }
	 
	 public void setUsername(String username) {
	      this.username = username;
	 }
	 
	 public String getPassword() {
	        return password;
	 }

	public void setPassword(String password) {
	     this.password = password;
	}
	
	public String getUserType() {
	        return usertype;
	 }
	
	public void setUserType(String usertype) {
	     this.usertype = usertype;
	}
	
	public String getName() {
	        return name;
	 }
	
	public void setName(String name) {
	     this.name = name;
	}
	    
}



