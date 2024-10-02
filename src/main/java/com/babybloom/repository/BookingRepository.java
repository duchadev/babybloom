package com.babybloom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babybloom.entities.Bookings;

@Repository
public interface BookingRepository extends JpaRepository<Bookings, Integer> {

}
