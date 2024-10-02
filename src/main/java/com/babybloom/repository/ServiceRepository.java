package com.babybloom.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babybloom.entities.Services;

@Repository
public interface ServiceRepository extends JpaRepository<Services, Integer> {
public List<Services> findAll();
public Services findServiceByServiceId(int serviceId);
}
