package com.cdac.ArtRealm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cdac.ArtRealm.entity.Booking;

public interface BookingRepository extends JpaRepository<Booking,Integer> {

}
