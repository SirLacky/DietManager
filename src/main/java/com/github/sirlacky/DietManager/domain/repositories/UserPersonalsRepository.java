package com.github.sirlacky.DietManager.domain.repositories;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.model.UserPersonals;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserPersonalsRepository extends JpaRepository<UserPersonals, Long> {

}
