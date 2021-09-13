package net.prev.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.prev.www.model.Reply;
import net.prev.www.service.ReplyService;

@RestController
@RequestMapping("/api")
public class ApiController {
	
	@Autowired
	ReplyService replyService;
	
	@PatchMapping
	public Reply update(@RequestBody Reply item) {
		replyService.update(item);
		
		return item;
	}
}
