package net.prev.www.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.prev.www.model.Member;
import net.prev.www.service.MemberService;



@Controller
public class RootController {
	
	@Autowired
	MemberService service;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signup(Member item) {
		service.add(item);
		
		return "redirect:.";
	}
	
	@ResponseBody
	@RequestMapping("/checkId")
	public String checkId(String id) {
		if(service.checkId(id))
			return "OK";
		else
			return "FAIL";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(Member item, HttpSession session) {
		Member member = service.item(item.getId());
		
		if(member != null) {
			String id = member.getId();
			String pw = member.getPw();
			
			if(id.equals( item.getId()) && pw.equals(item.getPw()) ) {
				session.setAttribute("member", member);
				session.setAttribute("id", id);
				return "redirect:.";
			}
			return "redirect:login";
		}
		return "redirect:login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
	
}

