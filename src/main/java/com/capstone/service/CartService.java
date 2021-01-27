package com.capstone.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.capstone.dao.CartDAO;
import com.capstone.model.Song;

import lombok.Data;

@Data
@Service
public class CartService implements CartDAO {
	
	private List<Song> songs;

	@Override
	public Song addToCart(Song song) {
		songs.add(song);
		return song;
	}

	@Override
	public void deleteItemById(int id) {
		songs.remove(id);
	}
	
	public void removeAll() {
		songs.clear();
	}

}
