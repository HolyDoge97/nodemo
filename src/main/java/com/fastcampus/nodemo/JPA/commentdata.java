package com.fastcampus.nodemo.JPA;

import lombok.*;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@AllArgsConstructor
@Data
@Builder
@Entity
public class commentdata {
    public commentdata() {
    }

    public commentdata(String commentMain) {
        this.commentMain = commentMain;
    }

    @Id
    @GeneratedValue
    private int ID;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 50)
    private int postNum;

    @Column(nullable = false, unique = true, length = 200)
    private String commentMain;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 50)
    private int depth;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 50)
    private int parent_ID;

    @GeneratedValue
    @Column(nullable = false, unique = true, length = 50)
    private int groupID;

}