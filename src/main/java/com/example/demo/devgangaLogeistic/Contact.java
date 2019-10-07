package com.example.demo.devgangaLogeistic;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="contact")
@SequenceGenerator(name="contact_sequence",sequenceName="e_item.contact_sequence",allocationSize=1,initialValue=1)
public class Contact {
	
	@Id
	@GeneratedValue(generator="contact_sequence",strategy=GenerationType.SEQUENCE)
	@Column(name="contactId")
	private int contactId;
	
	@Column(name="contactName",nullable=true)
	private String contactName;
	
	@Column(name="contactEmail",nullable=true)
	private String contactEmail;
	
	@Column(name="contactComment",nullable=true)
	private String contactComment;
	
	
	
	@Column(name="contactDate",nullable=true)
	private Date contactDate;


	public int getContactId() {
		return contactId;
	}


	public void setContactId(int contactId) {
		this.contactId = contactId;
	}


	public String getContactName() {
		return contactName;
	}


	public void setContactName(String contactName) {
		this.contactName = contactName;
	}


	public String getContactEmail() {
		return contactEmail;
	}


	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}


	public String getContactComment() {
		return contactComment;
	}


	public void setContactComment(String contactComment) {
		this.contactComment = contactComment;
	}


	public Date getContactDate() {
		return contactDate;
	}


	public void setContactDate(Date contactDate) {
		this.contactDate = contactDate;
	}

	
	
}
