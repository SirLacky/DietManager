package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/scanCode")
public class scanCodeController {

    @Autowired
    ProductRepository productRepository;

    @GetMapping
    public String prepareScanningPage(Model model) {
        model.addAttribute("product", new Product());
        return "scanCode";
    }

    @PostMapping
    public String lookForProductInBase(Product product, BindingResult result) {
        if (result.hasErrors()) {
            return "scanCode";
        }
        Optional<Product> existingProduct = productRepository.findProductByCode(product.getCode());
        if (existingProduct != null) {
            return "foundProduct";
        }
        return "addProduct";
    }
}