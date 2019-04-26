package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.model.ProductDetails;
import com.github.sirlacky.DietManager.domain.model.User;
import com.github.sirlacky.DietManager.domain.repositories.ProductDetailsRepository;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import com.github.sirlacky.DietManager.domain.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/foundProduct")
public class FoundProductController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    ProductRepository productRepository;
    @Autowired
    ProductDetailsRepository productDetailsRepository;

    @ModelAttribute("product")
    public List<Product> showFoundProductValues() {
        return productRepository.findAll();
    }

    @GetMapping
    public String showHowMuchYouEatenForm(Model model){
        model.addAttribute("productDetails", new ProductDetails());
        return "foundProduct";
    }

    @PostMapping
    public String addHowMuchYouEaten(@ModelAttribute ("productDetails")ProductDetails productDetails){
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.getByUsername(name);
        productDetails.setWhoEatem(user);
        productDetailsRepository.save(productDetails);


        return "redirect:/main";
    }

}

