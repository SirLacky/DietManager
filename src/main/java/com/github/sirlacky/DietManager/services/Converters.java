package com.github.sirlacky.DietManager.services;

import com.github.sirlacky.DietManager.domain.model.User;
import com.github.sirlacky.DietManager.dtos.RegistrationFormDTO;
import com.github.sirlacky.DietManager.dtos.UserDTO;

public class Converters {


    public static UserDTO convertToUserDTO(User user) {
        UserDTO userDTO = new UserDTO();
        userDTO.setUserName(user.getUsername());
        userDTO.setFirstName(user.getFirstName());
        userDTO.setLastName(user.getLastName());
        return userDTO;
    }

    public static User convertToUser(RegistrationFormDTO form) {
        User user = new User();
        user.setUsername(form.getUsername());
        user.setPassword(form.getPassword());
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        return user;
    }
}
