package net.prev.www.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calendar")
public class CalendarController {
	final String path = "calendar/";
	
	@RequestMapping({"/","/main"})
	public String Calendar() {
		return path+"main";
	}
}
