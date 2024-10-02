package com.babybloom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babybloom.entities.Customers;

@Repository
public interface AccountRepository extends JpaRepository<Customers, Integer> {
    Customers findAccountByUsername(String username);
    
    Customers findAccountByEmail(String email);
    Customers findCustomersByPhoneNumber(String phoneNumberString);
    Customers findCustomersByCustomerId(int id);
}
