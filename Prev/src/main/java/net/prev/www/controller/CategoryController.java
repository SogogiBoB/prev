package net.prev.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.prev.www.model.Category;
import net.prev.www.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	final String path = "category/";
	
	@Autowired
	CategoryService service;
	
	@RequestMapping({"/","/list"})
	public String list(Model model) {
		List<Category> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Category item) {
		service.add(item);
		
		return "redirect:list";
	}
}

