package com.capstone.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.capstone.model.Song;

public interface SongDAO extends CrudRepository<Song, Integer> {

	public Optional<Song> findByTitle(String title);

	public Optional<Song> findByDescription(String description);

	public Optional<List<Song>> findAllByArtist(String artist);

	public Optional<List<Song>> findAllByGenre(String genre);

	public Optional<List<Song>> findAllByFormat(String format);

}
