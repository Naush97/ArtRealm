package com.cdac.ArtRealm.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {
	@Id
    @GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name="id")
	private long id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	private String typeOfArtist;
//	private String artistName;
//	public String getArtistName() {
//		return artistName;
//	}
//
//	public void setArtistName(String artistName) {
//		this.artistName = artistName;
//	}
	private String description;
	private Date availableDate;
	
	private String currentCity;
	private String currentStatus;
	private String charge;
	public String getTypeOfArtist() {
		return typeOfArtist;
	}
	public void setTypeOfArtist(String typeOfArtist) {
		this.typeOfArtist = typeOfArtist;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCurrentCity() {
		return currentCity;
	}
	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}
	public String getCurrentStatus() {
		return currentStatus;
	}
	public void setCurrentStatus(String currentStatus) {
		this.currentStatus = currentStatus;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public Date getAvailableDate() {
		return availableDate;
	}
	public void setAvailableDate(Date availableDate) {
		this.availableDate = availableDate;
	}
}
