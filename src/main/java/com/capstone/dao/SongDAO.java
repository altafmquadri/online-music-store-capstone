package com.capstone.dao;

import org.springframework.data.repository.CrudRepository;

import com.capstone.model.Song;

public interface SongDAO extends CrudRepository<Song, Integer>{

}
