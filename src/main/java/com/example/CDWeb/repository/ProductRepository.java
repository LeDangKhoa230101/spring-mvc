package com.example.CDWeb.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.CDWeb.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	List<Product> findAll();
	
	Product findByProductid(Integer productid);
	
	List<Product> findByCategoryCateid(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByPriceAsc(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByPriceDesc(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByProductNameAsc(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByProductNameDesc(Integer cateid);
	
	Page<Product> findAll(Pageable pageable);
	
	@Modifying
	@Transactional
	@Query("DELETE FROM Product WHERE productid = :productid")
	void deleteByProductid(Integer productid);

}
