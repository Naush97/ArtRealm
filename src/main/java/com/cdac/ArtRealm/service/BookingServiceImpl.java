package com.cdac.ArtRealm.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.ArtRealm.dto.BookingRequest;
import com.cdac.ArtRealm.entity.Booking;
import com.cdac.ArtRealm.entity.Category;
import com.cdac.ArtRealm.entity.EventManager;
import com.cdac.ArtRealm.repository.BookingRepository;
import com.cdac.ArtRealm.repository.CategoryRepository;
import com.cdac.ArtRealm.repository.EventManagerRepository;
import com.cdac.ArtRealm.utilities.EmailUtility;
import com.cdac.ArtRealm.utilities.PDFgenerator;

@Service
public class BookingServiceImpl implements BookingService {
    
	@Autowired
	private EventManagerRepository eventManagerRepo;
	
	@Autowired
	private CategoryRepository categoryRepo;
	
	@Autowired
	private BookingRepository bookingRepo;
	
	
	  @Autowired
	  PDFgenerator pdfgenerator;
	  
	  @Autowired
	  EmailUtility emailUtility;
	 
	
	@Override
	public Booking bookArtists(BookingRequest request) {
		
      EventManager eventManager=new EventManager();
      eventManager.setFirstName(request.getFirstName());
      eventManager.setLastName(request.getLastName());
      eventManager.setMiddleName(request.getMiddleName());
      eventManager.setEmailId(request.getEmailId());
      eventManager.setPhone(request.getPhone());
      eventManagerRepo.save(eventManager);
      
      long categoryId = request.getCategoryId();
      Optional<Category> findById = categoryRepo.findById(categoryId);
      Category category = findById.get();
      
      Booking booking=new Booking();
      booking.setCategory(category);
      booking.setEventManager(eventManager);
      booking.setEventName("Birthday");
      booking.setEventVenue("Indore");
      //booking.setEventDate();
      bookingRepo.save(booking);
     
     String filePath="D:\\java\\Spring\\ArtRealm\\Tokens\\bookings"+booking.getId()+".pdf";
      bookingRepo.save(booking);
      
		
		  pdfgenerator.generateItinerary(booking,filePath);
		  emailUtility.sendItinerary(eventManager.getEmailId(),filePath);
		 
      return booking;
	}

	

}
