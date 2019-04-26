package com.github.sirlacky.DietManager.domain.repositories;

import com.github.sirlacky.DietManager.domain.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product,Long> {

    Optional<Product> findProductByCode(Long code);
    LocalDate todaysDate = LocalDate.now();

    @Query(value = "SELECT sum((p.calories / 100) * pd.how_much) FROM products p JOIN product_details pd ON p.id = pd.product_id JOIN users u ON u.id = pd.who_eatem_id WHERE u.username = 'zmartyniuk' AND pd.when_eaten = '2019-04-25';",nativeQuery = true)
    double countAllCalories();

    @Query(value = "SELECT SUM(products.whey) FROM products where products.when_eaten=('2019-04-24');",nativeQuery = true)
    double countAllWhey();

    @Query(value = "SELECT SUM(products.carbs) FROM products where products.when_eaten=('2019-04-24');",nativeQuery = true)
    double countAllCarbs();

    @Query(value = "SELECT SUM(products.fat) FROM products where products.when_eaten=('2019-04-24');",nativeQuery = true)
    double countAllFat();

}


