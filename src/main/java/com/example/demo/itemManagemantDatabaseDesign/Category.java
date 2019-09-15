package com.example.demo.itemManagemantDatabaseDesign;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="category_master")
@SequenceGenerator(name="category_master_sequence",sequenceName="e_item.category_master_sequence",initialValue=1,allocationSize=1)
public class Category {
	
	@Id
	@GeneratedValue(generator="category_master_sequence",strategy=GenerationType.SEQUENCE)
	/*@GeneratedValue(strategy=GenerationType.AUTO)*/ /*IF U WANT TO GENRATE ID AUTO GENRATION*/
	@Column(name="category_id")
	private int categoryId;
	
	@Column(name="category_name")
	private String categoryName;
	
	@Column(name="category_description")
	private String categoryDescription;

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}
    
	
	
}
