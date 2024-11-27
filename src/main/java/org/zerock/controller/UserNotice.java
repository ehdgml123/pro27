package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user")
@Log4j
public class UserNotice {
	
	@GetMapping("/notice")
    public String userLogin(Model model) {
        log.info("공지사항 page....");
        return "user/notice";  
    }

}
