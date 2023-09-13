package com.cdac.ArtRealm.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.ArtRealm.entity.Category;
import com.cdac.ArtRealm.repository.CategoryRepository;


@Controller
public class CategoryController {

	@Autowired
	private CategoryRepository categoryRepo;
	
	@RequestMapping("/findArtists")
	public String findArtists(@RequestParam("from") String from,@RequestParam("to") String to,@RequestParam("availableDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date availableDate,ModelMap modelMap) {
		List<Category> findArtists = categoryRepo.findArtists(from,to,availableDate);
		modelMap.addAttribute("findArtists", findArtists);
		return "login/displayArtists";
	}
	@RequestMapping("/showCompleteBooking")
	public String showCompleteBooking(@RequestParam("categoryId") Long categoryId,ModelMap modelMap) {
		Optional<Category> findById = categoryRepo.findById(categoryId);
		Category category = findById.get();
		modelMap.addAttribute("category", category);
		return "login/showBooking";
				}
}