package com.github.sirlacky.DietManager.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthorController {

    @GetMapping("/author")
    private String authorPage(){
        return "author";
    }

}
