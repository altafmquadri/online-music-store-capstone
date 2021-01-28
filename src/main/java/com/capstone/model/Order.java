package com.capstone.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "ord")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToMany
	@JoinTable(name = "ordered_songs", joinColumns = @JoinColumn(name = "song_id"), inverseJoinColumns = @JoinColumn(name = "order_id"))
	@ElementCollection
	private List<Song> orderedSongs = new ArrayList<>();
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private Customer customer;
	private String status;
	private Date date;
	@Embedded
	private MailingAddress mailingAddress;
}
