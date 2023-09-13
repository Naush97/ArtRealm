package com.cdac.ArtRealm.service;

import com.cdac.ArtRealm.dto.BookingRequest;
import com.cdac.ArtRealm.entity.Booking;

public interface BookingService {

	Booking bookArtists(BookingRequest request);

	
	

}
