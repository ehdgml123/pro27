package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user")
@Log4j
public class UserjoinController {

    @GetMapping("/join")
    public String userLogin(Model model) {
        log.info("user Login page");
        return "user/join";  
    }
    
    @GetMapping("/mypage")
    public String userMyPaget(Model model) {
        log.info("Mypage .....");
        return "user/mypage";  
    }
    
    
    @GetMapping("/Edit")
    public String userEdit(Model model) {
        log.info("나의 정보 수정 Page .....");
        return "user/Edit";  
    }
    
    @GetMapping("/checkdetails")
	 public String UserCheckDetails() {
		   
		 log.info("checkdetails page........");
		 
		 return "user/checkdetails";
	 }
    
    
    
    @GetMapping("review")
	public String ReviewPage() {

		log.info("reviewPage....");

		return "user/review";
	}
}

