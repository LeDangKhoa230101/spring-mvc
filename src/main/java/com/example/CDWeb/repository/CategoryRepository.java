package com.example.CDWeb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.CDWeb.model.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {

	List<Category> findAll();
	
	@Query("SELECT c FROM Category c WHERE c.cateid = :cateid")
	public Category getCategoryBycateid(@Param("cateid") Integer cateid);
}
