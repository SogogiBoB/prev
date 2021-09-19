package net.prev.www.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:../../";
	}
	
	@RequestMapping({"/","index"})
	public String index(@PathVariable String id, Model model) {
		List<Post> list = postService.list(id);
		
		model.addAttribute("list", list);
		
		return path+"index";
	}
	
	@RequestMapping("/{pid}")
	public String showDetail(@PathVariable int pid, Model model, HttpSession session) {
		Post item = postService.postsItem(pid);
				
		List<Reply> list = replyService.list(pid);
		
		model.addAttribute("item", item);
		model.addAttribute("replyList", list);
		
		return path+"showDetail";
	}
	
	@RequestMapping("/{pid}/insert")
	public String addReply(Reply item, @PathVariable String id, @PathVariable int pid) {
		item.setPid(pid);
		item.setId(id);
		
		replyService.add(item);
		
		return "redirect:../{pid}";
	}
	
	@RequestMapping("/{pid}/delete")
	public String deleteReply(Reply item) {
		int rid = item.getRid();
		
		System.out.println(rid);
		replyService.delete(rid);
		
		return "redirect:../{pid}";
	}
	
	@RequestMapping("/category")
	public String categoryList(@PathVariable String id, Model model) {
		List<perCategory> list = pcateService.list(id);
		
		model.addAttribute("list", list);
		
		return path + "categorylist";
	}
}
