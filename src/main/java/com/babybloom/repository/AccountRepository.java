package com.babybloom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.babybloom.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findAccountByUsername(String username);
    
    Account findAccountByEmail(String email);
}
