package org.example.demodeploy2.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="USERS")
public class User
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    //setters & getters
}
