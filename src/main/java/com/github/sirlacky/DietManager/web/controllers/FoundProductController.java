package com.github.sirlacky.DietManager.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FoundProductController {

    @GetMapping("/foundProduct")
    private String foundProductInDataBase() {
        return "foundProduct";
    }
}
