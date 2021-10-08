package net.prev.www.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.prev.www.model.Category;
import net.prev.www.model.Member;
import net.prev.www.model.Post;
import net.prev.www.model.Reply;
import net.prev.www.service.CategoryService;
import net.prev.www.service.MemberService;
import net.prev.www.service.PostService;
import net.prev.www.service.ReplyService;
import net.prev.www.util.Pager;

@Controller
public class RootController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	PostService postService;
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	CategoryService categoryService;

	@RequestMapping("/")
	   public String index(Model model, Pager pager) {
	      List<Member> memberList = memberService.list();
	      List<Post> lessThree = postService.utdList(); //최신글 리스트
	      List<Post> list = postService.allList(pager); //인기글 리스트
	      List<Category> clist = categoryService.ajaxList();
	      
	      System.out.println(lessThree.size());

	      model.addAttribute("memberList", memberList);
	      model.addAttribute("lessThree", lessThree);
	      model.addAttribute("result", list);
	      model.addAttribute("clist", clist);
	      
	      return "index";
	   }
	   
	   @PostMapping("/ajax_list")
	   @ResponseBody
	   public List<Post> postList(@RequestBody Pager pager) {
	      return postService.allList(pager);
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
				
				if(id.equals("admin")) {
					
					return "/admin/index";
				}
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
	
	@RequestMapping("/{pid}")
	public String showDetail(@PathVariable int pid, Model model) {
		Post item = postService.postsItem(pid);
		
		List<Reply> list = replyService.list(pid);
		
		model.addAttribute("item", item);
		model.addAttribute("replyList", list);
		
		System.out.println("�� ���� �ҷ��� �� ī��Ʈ��" + item.getViewcount());
		
		return "showDetail";
	}
	
	@PostMapping("/{pid}/insert")
	public String addReply(Reply item, @PathVariable int pid, HttpSession session) {
		
		String id = (String)session.getAttribute("id");
		
		item.setId(id);
		item.setPid(pid);
		
		replyService.add(item);
		
		return "redirect:../{pid}";
	}
	
}                          

