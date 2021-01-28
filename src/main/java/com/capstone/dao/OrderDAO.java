package com.capstone.dao;

import org.springframework.data.repository.CrudRepository;

import com.capstone.model.Order;

public interface OrderDAO extends CrudRepository<Order, Integer> {

}
