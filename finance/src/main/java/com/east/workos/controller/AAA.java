package com.east.workos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AAA {
	
	@RequestMapping("aa")
	public String list() {
		
		return "list";
	}

}
