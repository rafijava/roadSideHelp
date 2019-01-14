package com.idb.user;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class HelpUser {

	@NotNull(message="is required")
	@Size(min=1, message="is required")	
	private String serviceType;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	private String location;
	
	@NotNull(message="is required")
	@Size(min=11, message="is required")
	private int contact;

	public HelpUser() {
		
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}
	
	
	
}
