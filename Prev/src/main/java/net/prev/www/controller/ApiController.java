package net.prev.www.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonFormat;

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
		
		System.out.println(item.getRegdate());
		
		return item;
	}
	
	@DeleteMapping("/{rid}")
	public Integer delete(@PathVariable int rid) {
		replyService.delete(rid);
		
		return rid;
	}
}
