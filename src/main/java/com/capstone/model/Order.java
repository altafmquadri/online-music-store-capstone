package com.capstone.model;


import java.util.Date;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Embeddable
@Entity
@Table(name = "ord")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ElementCollection
	private List<Song> orderedSongs;
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private Customer customer;
	private String status;
	private Date date;
}
