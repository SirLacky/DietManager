package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.dtos.RegistrationFormDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegistrationController {


    @GetMapping
    public String prepareRegistrationForm(Model model){
        model.addAttribute("registrationForm", new RegistrationFormDTO());
        return "register";
    }

}
