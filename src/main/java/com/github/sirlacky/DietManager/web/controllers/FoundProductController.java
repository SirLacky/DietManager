package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.model.ProductDetails;
import com.github.sirlacky.DietManager.domain.repositories.ProductDetailsRepository;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.naming.Binding;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/foundProduct")
public class FoundProductController {

    @Autowired
    ProductRepository productRepository;
    @Autowired
    ProductDetailsRepository productDetailsRepository;

    @ModelAttribute("product")
    public List<Product> showFoundProductValues() {
        return productRepository.findAll();
    }

    @GetMapping
    public String showHowMuchYouEatenForm(){
        return "foundProduct";
    }

    @PostMapping
    public String addHowMuchYouEaten(@Valid @ModelAttribute ProductDetails productDetails, BindingResult result){
        productDetails.getHowMuch();
        productDetails.getWhenEaten();
        productDetails.getWhoEatem();
        productDetails.getProduct().getName();
        return "main";
    }

}

