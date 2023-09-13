package com.cdac.ArtRealm.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cdac.ArtRealm.entity.Category;

public interface CategoryRepository extends JpaRepository<Category,Long> {
	@Query("from Category where typeOfArtist=:typeOfArtist and currentCity=:currentCity and availableDate=:availableDate")
	List<Category> findArtists(@Param("typeOfArtist") String from,@Param("currentCity") String to,@Param("availableDate") Date availableDate);
	
}
