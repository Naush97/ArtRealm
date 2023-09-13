package com.cdac.ArtRealm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdac.ArtRealm.dto.BookingRequest;
import com.cdac.ArtRealm.entity.Booking;
import com.cdac.ArtRealm.service.BookingService;



@Controller
public class BookingController {

	@Autowired
	private BookingService bookingService;
	
	@RequestMapping("/confirmBooking")
	public String confirmBooking(BookingRequest request,ModelMap modelMap) {
		Booking bookingId = bookingService.bookArtists(request);
		modelMap.addAttribute("bookingId", bookingId.getId());
		
		return "login/confirmBooking";
	}
}
