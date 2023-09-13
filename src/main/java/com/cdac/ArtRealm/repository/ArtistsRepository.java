package com.cdac.ArtRealm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cdac.ArtRealm.entity.Artists;

public interface ArtistsRepository extends JpaRepository<Artists, Long> {

	Artists findByEmailId(String emailId);
}
