package com.github.sirlacky.DietManager.domain.model;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
@Entity
@Table(name = "productDetails")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long howMuch;
    private LocalDate whenEaten;
    @ManyToOne
    private Product product;
    @ManyToOne(cascade = {CascadeType.MERGE})
    private User whoEatem;

    @PrePersist
    public void prePersist(){
        whenEaten = LocalDate.now();
    }

}
