package com.example.demo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="brand_master")
@SequenceGenerator(name="brand_master_sequence",sequenceName="e_item.brand_master_sequence",allocationSize=1,initialValue=1)
public class Brand {
    
	@Id
	@GeneratedValue(generator="brand_master_sequence",strategy=GenerationType.SEQUENCE)
	@Column(name="brand_id")
	private int brandId;
	
	private String brandName;
	private String brandDescription;
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandDescription() {
		return brandDescription;
	}
	public void setBrandDescription(String brandDescription) {
		this.brandDescription = brandDescription;
	}
	
	
	
}
