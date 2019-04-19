package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/foundProduct")
@Controller
public class FoundProductController {

    @Autowired
    ProductRepository productRepository;

    @ModelAttribute("product")
    private List<Product> showFoundProductValues() {

        return productRepository.findAll();
    }
}
