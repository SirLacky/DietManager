package com.github.sirlacky.DietManager.domain.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
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

    private Integer weight;

    private Integer height;

    private Integer age;

    private String gender;

    private Double activity;

    @OneToOne
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
