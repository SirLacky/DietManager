package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/addProduct")
public class AddProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping
    public String addNewProductForm(Model model) {
        model.addAttribute("product", new Product());
        return "/addProduct";
    }

    @PostMapping
    public String saveNewProduct(@Valid @ModelAttribute("product") Product product, BindingResult result) {

        if (result.hasErrors()) {
            return "addProduct";

        } else {
            productRepository.save(product);
        }
        return "redirect:/addProduct";
    }

}
