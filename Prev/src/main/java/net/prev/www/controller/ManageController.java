package net.prev.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.prev.www.model.Category;
import net.prev.www.model.Member;
import net.prev.www.model.Post;
import net.prev.www.model.perCategory;
import net.prev.www.service.CategoryService;
import net.prev.www.service.MemberService;
import net.prev.www.service.PostService;
import net.prev.www.service.perCategoryService;

@Controller
@RequestMapping("/manage/{id}")
public class ManageController {
	final String path = "manage/";
	
	@Autowired
	PostService postService;
	
	@Autowired
	perCategoryService perCateService;
	
	@Autowired
	CategoryService	cateService;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/")
	public String index() {
		return path+ "index";
	}
	
//===== 글관리 ====================================================================
	@RequestMapping("/posts")
	public String postsList(Model model, @PathVariable String id) {
		List<Post> list = postService.list(id);
		
		model.addAttribute("list", list);
		
		return path + "posts/postsList";
	}
	
	@RequestMapping("/posts/showDetail")
	public String showDetail(int pid, Model model, Post post) {		
		post = postService.postsItem(pid);
		
		model.addAttribute("item", post);
		
		return path+"posts/showDetail";
	}
	
	@GetMapping("/posts/add")
	public String postsAdd(Model model,@PathVariable String id) {
		List<perCategory> categoryList = perCateService.list(id);
		
		model.addAttribute("postsAdd", categoryList);
		
		return path + "posts/postsAdd";
	}
	
	@PostMapping("/posts/add")
	public String postsAdd(Post item, @PathVariable String id) {
		item.setId(id);
		
		postService.postAdd(item);
		
		return "redirect:../posts";
	}
	
	@GetMapping("/posts/update")
	public String postsUpdate(Model model, @PathVariable String id, int pid) {
		List<perCategory> list = perCateService.list(id);
		Post item = postService.updateItem(pid);
		
		model.addAttribute("pcateList", list);
		model.addAttribute("item", item);
		
		return path + "posts/postsUpdate";
	}
	
	@PostMapping("/posts/update")
	public String postsUpdate(Post item) {
		postService.postsUpdate(item);
		
		return "redirect:../posts";
	}
	
//	===== 카테고리관리 ====================================================================
	@RequestMapping("/manageCategorys")
	public String categorysList(Model model, @PathVariable String id) {
		List<perCategory> list = perCateService.list(id);
	
		model.addAttribute("list", list);
		
		return path + "categorys/categorysList";
	}
	
	@GetMapping("/manageCategorys/add")
	public String catesAdd(Model model) {
		List<Category> list = cateService.list();
		
		model.addAttribute("list", list);
		
		return path + "categorys/categorysAdd";
	}
	
	@PostMapping("/manageCategorys/add")
	public String catesAdd(perCategory item, @PathVariable String id) {
		item.setId(id);
		
		perCateService.add(item);
		
		return "redirect:../manageCategorys";
	}
	
	@GetMapping("/manageCategorys/update")
	public String catesUpdate(Model model, int pcid) {
		perCategory item = perCateService.item(pcid);
		
		model.addAttribute("item", item);

		
		return path + "categorys/categorysUpdate";
	}
	
	@PostMapping("/manageCategorys/update")
	public String catesUpdate(perCategory item) {
		perCateService.categorysUpdate(item);
		
		return "redirect:../manageCategorys";
	}

//	===== 프로필관리 ====================================================================
	@RequestMapping("/profile")
	public String profileInfo(Model model, @PathVariable String id) {
		List<Member> profileInfo = memberService.profileInfo(id);

		System.out.println(profileInfo.toString());
		
		model.addAttribute("item", profileInfo);
		return path + "profile/profileInfo";
	}
}
