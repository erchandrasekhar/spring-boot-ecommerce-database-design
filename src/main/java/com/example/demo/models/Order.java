package com.example.demo.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="order_master")
@SequenceGenerator(name="order_master_sequence",sequenceName="e_item.order_master_sequence",initialValue=1,allocationSize=1)
public class Order {
    
	@Id
	@GeneratedValue(generator="order_master_sequence",strategy=GenerationType.SEQUENCE)
	@Column(name="order_id")
	private int orderId;
	
	@Column(name="order_amount")
	private Double orderAmount;
	
	@Column(name="order_date")
	@Temporal(TemporalType.DATE)
	private Date orderDate;
	
	@Column(name="order_dateAndTime")
	private Date orderDateTimeStemp;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="item_id")
	private Item item;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="user_id")
	private UserMaster userMaster;
	
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="tracking_Id")
	Tracking tracking;
	
	
	
}
