package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.User;
import com.github.sirlacky.DietManager.domain.model.UserPersonals;
import com.github.sirlacky.DietManager.domain.repositories.UserPersonalsRepository;
import com.github.sirlacky.DietManager.domain.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.validation.Valid;

@Controller
@RequestMapping("/personal")
public class UserPersonalsController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    UserPersonalsRepository userPersonalsRepository;

    public UserPersonalsController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping
    private String userPersonalDetailsInfo(Model model) {
        model.addAttribute("personal", new UserPersonals());
        return "personal";
    }

    @PostMapping
    private String editUserPersonalDetails(@Valid @ModelAttribute ("personal") UserPersonals userPersonals, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "personal";
        } else {
            String name = SecurityContextHolder.getContext().getAuthentication().getName();
            User user = userRepository.getByUsername(name);
            userPersonals.setUser(user);
            userPersonalsRepository.save(userPersonals);
        }
        return "redirect:/main";
    }
}
