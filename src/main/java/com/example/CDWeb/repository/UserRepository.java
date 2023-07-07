package com.example.CDWeb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.CDWeb.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByEmail(String email);

	@Modifying
	@Transactional
	@Query(value = "UPDATE users SET password = :password WHERE email = :email", nativeQuery = true)
	Integer changePasswordByEmail(String password, String email);
	
	
}
