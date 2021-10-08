package net.prev.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.prev.www.model.Category;
import net.prev.www.model.Member;
import net.prev.www.model.Post;
import net.prev.www.service.CategoryService;
import net.prev.www.service.MemberService;
import net.prev.www.service.PostService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	final String path = "admin/";
	final String memberpath = "admin/members/";
	final String categorypath = "admin/categorys/";
	final String postpath = "admin/posts/";
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	PostService postService;
	
	@RequestMapping({"/","/index"})
	public String index() {	
		return path+"index";
	}
//	회원관리
	@RequestMapping("/members")
	public String membersList(Model model) {
		List<Member> members = memberService.adminmembers();
		
		model.addAttribute("members", members);
		
		return memberpath+"members";
	}
	@RequestMapping("/mDelete")
	public String membersDelete(String id) {
		
		memberService.adminMembersDelete(id);
		
		return "redirect:members";
	}
	@GetMapping("/mUpdate")
	public String mUpdate(Model model, String id) {
	
		Member memberItem = memberService.adminMembersItem(id);
		
		model.addAttribute("memberItem", memberItem);
		
		return memberpath+"mUpdate";
	}
	@PostMapping("/mUpdate")
	public String mUpdate(Member item) {
		
		memberService.adminMemberUpdate(item);
		
		return "redirect:members";
	}
	
//	카테고리관리
	@RequestMapping("/categorys")
	public String categorysList(Model model) {
		List<Category> categorys = categoryService.adminCategorys();
		
		model.addAttribute("categorys", categorys);
		
		return categorypath+"categorys";
	}
	@RequestMapping("/cDelete")
	public String categorysDelete(int cid) {
		
		categoryService.adminCategorysDelete(cid);
		
		return "redirect:categorys";
	}
	
	@ResponseBody
	@PatchMapping("/cUpdate")
	public Category adminCUpdate(@RequestBody Category item) {
		categoryService.adminCategoryUpdate(item);
		
		return item;
	}
	
	@ResponseBody
	@PutMapping("/cAdd")
	public Category adminCAdd(@RequestBody Category item) {
		
		categoryService.adminCategoryAdd(item);
		
		return item;
	}
// 글관리
	@RequestMapping("/posts")
	public String postsList(Model model) {
		List<Post> posts = postService.postList();
		
		model.addAttribute("posts", posts);
		
		return postpath+"posts";
	}
	@RequestMapping("/pDelete")
	public String postsDelete(int pid) {
		
		postService.adminPostsDelete(pid);
		
		return "redirect:posts";
	}
}
