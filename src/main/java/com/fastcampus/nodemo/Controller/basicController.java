package com.fastcampus.nodemo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class basicController {

    @GetMapping("/vue")
    public String indexControll() {
        return "returnTest";
    }

}
