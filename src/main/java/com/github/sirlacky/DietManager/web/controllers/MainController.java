package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.User;
import com.github.sirlacky.DietManager.domain.model.UserPersonals;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import com.github.sirlacky.DietManager.domain.repositories.UserPersonalsRepository;
import com.github.sirlacky.DietManager.domain.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/main")
public class MainController {


    @Autowired
    ProductRepository productRepository;
    @Autowired
    UserPersonalsRepository userPersonalsRepository;
    @Autowired
    UserRepository userRepository;


    @ModelAttribute("personals")
    public UserPersonals getAllPersonals() {
        //pobieranie z SecurityContextu osobę zalogowaną i jej name
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        //zapisywanie do usera danych pobranego usera
        User user = userRepository.getByUsername(name);
        //zapisywanie danych personalnych zalogowanego usera do byUser
        UserPersonals byUser = userPersonalsRepository.getByUser(user);
        UserPersonals userPersonals = userPersonalsRepository.getByUser(user);
        return userPersonals;
    }

    @ModelAttribute("ppm")
    public double getPPM() {
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.getByUsername(name);
        UserPersonals byUser = userPersonalsRepository.getByUser(user);
        if (byUser.getGender().equals("M")) {
            double ppm = 88.362 + (13.397 * byUser.getWeight()) + (4.799 * byUser.getHeight()) - (5.677 * byUser.getAge());
            ppm = Math.round(ppm);
            return ppm;
        } else {
            double ppm = 447.593 + (9.247 * byUser.getWeight()) + (3.098 * byUser.getHeight()) - (4.33 * byUser.getAge());
            ppm = Math.round(ppm);
            return ppm;
        }
    }

    @ModelAttribute("cpm")
    public double getCPM() {
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.getByUsername(name);
        UserPersonals byUser = userPersonalsRepository.getByUser(user);
        if (byUser.getGender().equals("M")) {
            double ppm = 88.362 + (13.397 * byUser.getWeight()) + (4.799 * byUser.getHeight()) - (5.677 * byUser.getAge());
            double cpm = ppm * byUser.getActivity();
            cpm = Math.round(cpm);
            return cpm;
        } else {
            double ppm = 447.593 + (9.247 * byUser.getWeight()) + (3.098 * byUser.getHeight()) - (4.33 * byUser.getAge());

            double cpm = ppm * byUser.getActivity();
            cpm = Math.round(cpm);
            return cpm;
        }
    }

    @GetMapping()
    public String displayDetails(Model model) {
//        model.addAttribute("personals", getAllPersonals());
//        model.addAttribute("cpm", getCPM());
//        model.addAttribute("ppm", getPPM());
        return "main";
    }


}