package com.capstone.customercontrollers;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.capstone.dao.SongDAO;
import com.capstone.model.Song;
import com.capstone.service.CartService;

@RestController
@SessionAttributes({"customer", "songs", "cart"})
public class CustomerController {

	@Autowired
	SongDAO songDao;
	
	@Autowired
	CartService cs;

	@GetMapping("/songs")
	public ModelAndView showSongs(ModelMap model,@Param("keyword") String keyword) {
		if(keyword==null) {
			List<Song> songs = (List<Song>) songDao.findAll();
			model.put("songs", songs);
			return new ModelAndView("songs").addObject("songs", songs);			
		}
		
		List<Song> songs = songDao.findAll(keyword);
		model.put("songs", songs);
		return new ModelAndView("songs").addObject("songs", songs);			
	}
	
	@GetMapping("/addtocart/{id}")
	public ModelAndView addToCart(@PathVariable("id") int id, ModelMap model) {
		Song song = songDao.findById(id).get();
		System.out.println(song);
		cs.addToCart(song);
		model.put("cart", cs.getSongs());
		return new ModelAndView("redirect:/songs");
	}
	
	@GetMapping("/cart")
	public ModelAndView showCart() {
		List<Song> songs = cs.getSongs();		
		return new ModelAndView("cart").addObject("cart", songs);
	}
	
	@GetMapping("/removeitem/{id}")
	public ModelAndView removeItem(@PathVariable("id") int id) {
		cs.deleteItemById(id);
		return new ModelAndView("redirect:/cart");		
	}
	
	
	
	
}
