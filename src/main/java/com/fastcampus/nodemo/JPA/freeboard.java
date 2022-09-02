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
public class freeboard {

    public freeboard() {
    }

    public freeboard(String postMan, String postTitle, String postMain) {
        this.postMan = postMan;
        this.postTitle = postTitle;
        this.postMain = postMain;
    }

    @Id
    @GeneratedValue
    private int postNum;

    @Column(nullable = false, unique = true, length = 30)
    private String postMan;

    @Column(nullable = false, length = 200)
    private String postTitle;

    @Column(nullable = false, length = 5000)
    private String postMain;

    @GeneratedValue
    @Column(nullable = false, length = 30)
    private Timestamp postTime;

    @GeneratedValue
    @Column(nullable = false, length = 50)
    private int postView;

    @Column(nullable = false, length = 5000)
    private String postComment;

}
