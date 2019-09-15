package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="item_master")
@SequenceGenerator(name="item_master_sequence",sequenceName="e_item.item_master_sequence",initialValue=1,allocationSize=1)
public class Item {
 @Id
 @GeneratedValue(generator="item_master_sequence",strategy=GenerationType.SEQUENCE)
 
 private int itemId;
 private String itemName;
 private Double itemPrice;
 private String itemDescription;
 private Boolean isOffer = false;
 
 @ManyToOne
 @JoinColumn(name="catogery_id",referencedColumnName="category_id")
 private Category category;
 
 @ManyToOne
 @JoinColumn(name="brand_id",referencedColumnName="brand_id")
 private Brand brand;

public int getItemId() {
	return itemId;
}

public void setItemId(int itemId) {
	this.itemId = itemId;
}

public String getItemName() {
	return itemName;
}

public void setItemName(String itemName) {
	this.itemName = itemName;
}

public Double getItemPrice() {
	return itemPrice;
}

public void setItemPrice(Double itemPrice) {
	this.itemPrice = itemPrice;
}

public String getItemDescription() {
	return itemDescription;
}

public void setItemDescription(String itemDescription) {
	this.itemDescription = itemDescription;
}

public Boolean getIsOffer() {
	return isOffer;
}

public void setIsOffer(Boolean isOffer) {
	this.isOffer = isOffer;
}

public Category getCategory() {
	return category;
}

public void setCategory(Category category) {
	this.category = category;
}

public Brand getBrand() {
	return brand;
}

public void setBrand(Brand brand) {
	this.brand = brand;
}
 
 
 
}
