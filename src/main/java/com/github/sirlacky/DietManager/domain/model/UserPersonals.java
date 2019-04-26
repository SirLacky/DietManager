package com.github.sirlacky.DietManager.domain.model;

import lombok.*;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user_details")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserPersonals {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer weight = 0;

    private Integer height = 0;

    private Integer age = 0;

    private String gender = "brak";

    private Double activity = 0.0;

    @OneToOne(cascade = {CascadeType.MERGE})
    private User user;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserPersonals that = (UserPersonals) o;
        return weight == that.weight &&
                height == that.height &&
                age == that.age &&
                Double.compare(that.activity, activity) == 0 &&
                Objects.equals(id, that.id) &&
                Objects.equals(gender, that.gender);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, weight, height, age, gender, activity);
    }
}
