package com.example.demo.devgangaLogeistic;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.example.demo.User;

@Entity
@Table(name="dlBill")
@SequenceGenerator(name="dlBill_master_sequence",sequenceName="e_item.dlBill_master_sequence",allocationSize=1,initialValue=1)
public class DlBill {
	@Id
	@GeneratedValue(generator="dlBill_master_sequence",strategy=GenerationType.SEQUENCE)
	@Column(name="dlBill_id")
	private int dlBillId;
	
	@Column(name="loriNumber",nullable=true)
	private String loriNumber;
	
	@Column(name="logesticName",nullable=true)
	private String logesticName;
	
	@Column(name="billGenratedBy",nullable=true)
	private String billGenratedBy;
	
	@JoinColumn(name="userId",referencedColumnName="userId")
	@ManyToOne(fetch=FetchType.EAGER)
	private User user;
	
	@Temporal(TemporalType.DATE)
	@Column(name="bill_generated_date",nullable=true)
	private Date billDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fromDate",nullable=true)
	private Date fromDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name="toDate",nullable=true)
	private Date toDate;
	@Column(name="loadingLocation",nullable=true)
	private String loadingLocation;
	
	@Column(name="unLoadingLocation",nullable=true)
	private String unLoadingLocation;
	
	@Column(name="driver",nullable=true)
	private String driver;
	
	@Column(name="dieselPrice",nullable=true)
	private double dieselPrice;
	
	@Column(name="materialCategory",nullable=true)
	private String materialCategory;
	
	@Column(name="materialPrice",nullable=true)
	private double materialPrice;
	
	@Column(name="policePrice",nullable=true)
	private double policePrice;
	
	@Column(name="passingPrice",nullable=true)
	private double passingPrice;
	
	@Column(name="grisingPrice",nullable=true)
	private double grisingPrice;
	
	@Column(name="commissionPrice",nullable=true)
	private double commissionPrice;
	
	@Column(name="labourPrice",nullable=true)
	private double labourPrice;
	
	@Column(name="dalaliPrice",nullable=true)
	private double dalaliPrice;
	
	@Column(name="tollPrice",nullable=true)
	private double tollPrice;
	
	@Column(name="foodPrice",nullable=true)
	private double foodPrice;
	
	@Column(name="grandTotal",nullable=true)
	private double grandTotal;
	
	
	public String getLogesticName() {
		return logesticName;
	}
	public void setLogesticName(String logesticName) {
		this.logesticName = logesticName;
	}
	public int getDlBillId() {
		return dlBillId;
	}
	public void setDlBillId(int dlBillId) {
		this.dlBillId = dlBillId;
	}
	public String getLoriNumber() {
		return loriNumber;
	}
	public void setLoriNumber(String loriNumber) {
		this.loriNumber = loriNumber;
	}
	public String getBillGenratedBy() {
		return billGenratedBy;
	}
	public void setBillGenratedBy(String billGenratedBy) {
		this.billGenratedBy = billGenratedBy;
	}
	public Date getBillDate() {
		return billDate;
	}
	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	public String getLoadingLocation() {
		return loadingLocation;
	}
	public void setLoadingLocation(String loadingLocation) {
		this.loadingLocation = loadingLocation;
	}
	public String getUnLoadingLocation() {
		return unLoadingLocation;
	}
	public void setUnLoadingLocation(String unLoadingLocation) {
		this.unLoadingLocation = unLoadingLocation;
	}
	public String getDriver() {
		return driver;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public double getDieselPrice() {
		return dieselPrice;
	}
	public void setDieselPrice(double dieselPrice) {
		this.dieselPrice = dieselPrice;
	}
	public String getMaterialCategory() {
		return materialCategory;
	}
	public void setMaterialCategory(String materialCategory) {
		this.materialCategory = materialCategory;
	}
	public double getPolicePrice() {
		return policePrice;
	}
	public void setPolicePrice(double policePrice) {
		this.policePrice = policePrice;
	}
	public double getPassingPrice() {
		return passingPrice;
	}
	public void setPassingPrice(double passingPrice) {
		this.passingPrice = passingPrice;
	}
	public double getGrisingPrice() {
		return grisingPrice;
	}
	public void setGrisingPrice(double grisingPrice) {
		this.grisingPrice = grisingPrice;
	}
	public double getComisionPrice() {
		return commissionPrice;
	}
	public void setComisionPrice(double comisionPrice) {
		this.commissionPrice = comisionPrice;
	}
	public double getLabourPrice() {
		return labourPrice;
	}
	public void setLabourPrice(double labourPrice) {
		this.labourPrice = labourPrice;
	}
	public double getDalaliPrice() {
		return dalaliPrice;
	}
	public void setDalaliPrice(double dalaliPrice) {
		this.dalaliPrice = dalaliPrice;
	}
	public double getTollPrice() {
		return tollPrice;
	}
	public void setTollPrice(double tollPrice) {
		this.tollPrice = tollPrice;
	}
	public double getFoodPrice() {
		return foodPrice;
	}
	public void setFoodPrice(double foodPrice) {
		this.foodPrice = foodPrice;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	
	public double getMaterialPrice() {
		return materialPrice;
	}
	public void setMaterialPrice(double materialPrice) {
		this.materialPrice = materialPrice;
	}
	public double getCommissionPrice() {
		return commissionPrice;
	}
	public void setCommissionPrice(double commissionPrice) {
		this.commissionPrice = commissionPrice;
	}
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "DlBill [dlBillId=" + dlBillId + ", loriNumber=" + loriNumber + ", logesticName=" + logesticName
				+ ", billGenratedBy=" + billGenratedBy + ", billDate=" + billDate + ", fromDate=" + fromDate
				+ ", toDate=" + toDate + ", loadingLocation=" + loadingLocation + ", unLoadingLocation="
				+ unLoadingLocation + ", driver=" + driver + ", dieselPrice=" + dieselPrice + ", materialCategory="
				+ materialCategory + ", materialPrice=" + materialPrice + ", policePrice=" + policePrice
				+ ", passingPrice=" + passingPrice + ", grisingPrice=" + grisingPrice + ", commissionPrice="
				+ commissionPrice + ", labourPrice=" + labourPrice + ", dalaliPrice=" + dalaliPrice + ", tollPrice="
				+ tollPrice + ", foodPrice=" + foodPrice + ", grandTotal=" + grandTotal + "]";
	}
	
	

}
