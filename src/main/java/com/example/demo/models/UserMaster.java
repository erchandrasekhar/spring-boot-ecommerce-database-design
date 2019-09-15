package com.example.demo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="user_master")
@SequenceGenerator(name="user_master_sequence",sequenceName="e_item.user_master_sequence",initialValue=1,allocationSize=1)
public class UserMaster {
	@Id
	@GeneratedValue(generator="user_master_sequence",strategy=GenerationType.SEQUENCE)
	@Column(name="user_id")
	private int userIdPk;
	
	private String userName;
}
