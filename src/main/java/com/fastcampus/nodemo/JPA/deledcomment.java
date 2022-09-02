package com.fastcampus.nodemo.JPA;

import lombok.*;
import java.sql.Timestamp;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@AllArgsConstructor
@Data
@Builder
@Entity
public class deledcomment {

    @Id
    @GeneratedValue
    private int postNum;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 50)
    private String postMan;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 200)
    private String postTitle;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 5000)
    private String postMain;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 30)
    private Timestamp postTime;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 50)
    private int postView;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 5000)
    private String postComment;

}
