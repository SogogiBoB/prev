package net.prev.www.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.prev.www.model.Category;
import net.prev.www.model.Post;
import net.prev.www.model.perCategory;
import net.prev.www.service.CategoryService;
import net.prev.www.service.PostService;
import net.prev.www.service.perCategoryService;

@Controller
@RequestMapping("/post/{id}")
public class PostController {
	
	final String path="post/";
	
	@Autowired
	PostService service;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	perCategoryService pcateService;
	
	@RequestMapping({"/", "/list"})
	public String list(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		List<Post> list = service.list(id);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add(Model model, @PathVariable String id) {
		
		List<perCategory> categoryList = pcateService.list(id);
		
		model.addAttribute("categoryList", categoryList);
		
		return path+"add";
	}
	
	@PostMapping("/add")
	public String add(Post item, @PathVariable String id) {
		item.setId(id);

		service.add(item);
		
		return "redirect:my/";
	}
	
}
