package com.fastcampus.nodemo.JPA;

import lombok.*;

import java.sql.Timestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity(name = "freeboard")
public class boardEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int postNum;

    @Column(nullable = false, unique = true, length = 30)
    private String postMan;

    @Column(nullable = false, length = 200)
    private String postTitle;

    @Column(nullable = false, length = 5000)
    private String postMain;

    @Column(nullable = false, length = 30)
    private Timestamp postTime;

    @Column(nullable = false, length = 30)
    private int postView;

    public boardEntity(String postMan, String postTitle, String postMain) {
        this.postMan = postMan;
        this.postTitle = postTitle;
        this.postMain = postMain;
    }
}
