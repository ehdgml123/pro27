package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/phone")
@Log4j
public class PhoneController {

    @GetMapping("/phoneproduct") 
    public String phoneProductPage() {
        log.info("상품 페이지 이동완료...");
        return "phone/phoneproduct"; 
    }
    
    
    @GetMapping("/PhoneDetail") 
    public String phoneProductDetail() {
        log.info("상품 상세페이지 이동완료...");
        return "phone/PhoneDetail"; 
    }
    
    @GetMapping("/comparison") 
    public String phonecomparison() {
        log.info("핸드폰 견적 비교 페이지 이동완료...");
        return "phone/comparison"; 
    }  
    
}
