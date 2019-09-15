package com.example.demo.models;

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
@Table(name="tracking_master")
@SequenceGenerator(name="tracking_master_sequence",sequenceName="e_item.tracking_master_sequence",initialValue=1,allocationSize=1)
public class Tracking {
    
	@Id
	@GeneratedValue(generator="tracking_master_sequence",strategy=GenerationType.SEQUENCE)
	private int trackingId;
	
	private boolean orderPrepared = false;
	@Column(name="orderPrepared_date")
	@Temporal(TemporalType.DATE)
	private Date orderPreparedDate;
	@Column(name="orderPrepared_date_timstemp")
	private Date orderPreparedDateTimeStemp;
	
	private boolean processed = false;
	@Temporal(TemporalType.DATE)
	private Date processedDate;
	@Column(name="processed_date_timstemp")
	private Date processedDateTimeStemp;
	
	@Temporal(TemporalType.DATE)
	private Date shippedDate;
	@Column(name="shipped_date_timstemp")
	private Date shippedDateTimeStemp;
	private boolean shipped = false;
	
	@Temporal(TemporalType.DATE)
	private Date deliverdDate;
	@Column(name="deliverd_date_timstemp")
	private Date deliverdDateTimeStemp;
	private boolean deliverd = false;
	
	
}
