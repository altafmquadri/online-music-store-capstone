package com.capstone.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Account {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int creditCardNumber;
	@OneToOne
	private Customer customer;
}
