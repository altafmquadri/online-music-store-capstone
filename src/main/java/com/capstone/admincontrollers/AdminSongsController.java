package com.capstone.admincontrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.dao.SongDAO;
import com.capstone.model.Song;

@RestController
@SessionAttributes({"admin", "songs"})
public class AdminSongsController {
	
	@Autowired
	SongDAO songDao;

	@GetMapping("admin/songs")
	public ModelAndView showPage( ModelMap model) {
		List<Song> songs =  (List<Song>) songDao.findAll();
		model.put("songs",songs);
		return new ModelAndView("adminsongs");
	}
	
	@PostMapping("admin/songs")
	public ModelAndView addSong(@RequestParam("title") String title, @RequestParam("description") String description,
			@RequestParam("artist") String artist, @RequestParam("genre") String genre,
			@RequestParam("format") String format, @RequestParam("price") double price) {
		Song song = new Song();
		song.setTitle(title);
		song.setDescription(description);
		song.setArtist(artist);
		song.setGenre(genre);
		song.setFormat(format);
		song.setPrice(price);
		songDao.save(song);
		return new ModelAndView("redirect:/admin/songs");
	}
	
}