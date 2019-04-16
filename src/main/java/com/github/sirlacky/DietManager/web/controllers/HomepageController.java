package com.github.sirlacky.DietManager.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController {

    @GetMapping("/")
    public String mainPageController(){
        return "homepage";
    }

    @GetMapping("/homepage")
    public String homepageController(){
        return "homepage";
    }
}
