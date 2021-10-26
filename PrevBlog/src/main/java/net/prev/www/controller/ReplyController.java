package net.prev.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.prev.www.model.Reply;
import net.prev.www.service.ReplyService;

@Controller
@RequestMapping("/reply")
public class ReplyController {
	final String path = "reply/";
	
	@Autowired
	ReplyService service;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/add")
	public String add() {
		return path +"add";
	}
	
	@PostMapping("/add")
	public String add(@PathVariable int pid, Reply item) {
		item.setPid(pid);
		service.add(item);
		
		return "redirect:/";
	}
	

}
