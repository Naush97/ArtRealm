package com.cdac.ArtRealm.entity;


import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity

public class Booking extends AbstractEntity{

private String eventName;
private String eventVenue;

@OneToOne
private EventManager eventManager;
@OneToOne
private Category category;

public String getEventName() {
	return eventName;
}
public void setEventName(String eventName) {
	this.eventName = eventName;
}
public String getEventVenue() {
	return eventVenue;
}
public void setEventVenue(String eventVenue) {
	this.eventVenue = eventVenue;
}

public EventManager getEventManager() {
	return eventManager;
}
public void setEventManager(EventManager eventManager) {
	this.eventManager = eventManager;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}

}
