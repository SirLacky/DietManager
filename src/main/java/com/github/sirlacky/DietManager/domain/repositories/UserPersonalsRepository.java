package com.github.sirlacky.DietManager.domain.repositories;

import com.github.sirlacky.DietManager.domain.model.User;
import com.github.sirlacky.DietManager.domain.model.UserPersonals;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserPersonalsRepository extends JpaRepository<UserPersonals, Long> {

    UserPersonals getByUser(User user);


}
