package com.capstone.customercontrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.dao.SongDAO;
import com.capstone.model.Song;

@RestController
@SessionAttributes("songs")
public class CustomerController {
	
	@Autowired
	SongDAO songDao;
	
	@GetMapping("/songs")
	public ModelAndView showSongs(ModelMap model) {
		List<Song> songs = (List<Song>) songDao.findAll();
		model.put("songs", songs);
		return new ModelAndView("songs").addObject("songs", songs);
	}
	
}
