package com.example.CDWeb.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.CDWeb.model.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {

	List<Orders> findByUserUserid(int userid);

	List<Orders> findByUserUseridAndOrderStatus(int userid, String orderStatus);
	
	Page<Orders> findAll(Pageable pageable);
	
	Orders findByOrderid(Integer orderid);
	
	@Modifying
	@Transactional
	@Query("DELETE FROM Orders WHERE orderid = :orderid")
	void deleteByOrderid(Integer orderid);
}