package net.prev.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.prev.www.model.Post;
import net.prev.www.model.Reply;
import net.prev.www.model.perCategory;
import net.prev.www.service.CategoryService;
import net.prev.www.service.PostService;
import net.prev.www.service.ReplyService;
import net.prev.www.service.perCategoryService;

@Controller
@RequestMapping("/my/{id}")
public class Mycontroller {
	
	final String path = "my/";
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	perCategoryService pcateService;
	
	@Autowired
	PostService postService;
	
	@Autowired
	ReplyService replyService;
	
	@RequestMapping({"/","index"})
	public String index(@PathVariable String id, Model model) {
		List<Post> list = postService.list(id);
		
		model.addAttribute("list", list);
		
		return path+"index";
	}
	
	@RequestMapping("/showDetail")
	public String showDetail(int pid, Model model) {
		Post item = postService.postsItem(pid);
		
		List<Reply> list = replyService.list();
		
		model.addAttribute("item", item);
		model.addAttribute("replyList", list);
		
		return path+"showDetail";
	}
	
	@PostMapping("/addReply")
	public String addReply(Reply item) {
		replyService.add(item);
		
		return "redirect:showDetail";
	}
	
	@RequestMapping("/category")
	public String categoryList(@PathVariable String id, Model model) {
		List<perCategory> list = pcateService.list(id);
		
		model.addAttribute("list", list);
		
		return path + "categorylist";
	}
	
	
	
}
