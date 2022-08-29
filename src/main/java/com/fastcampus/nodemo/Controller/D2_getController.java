package com.fastcampus.nodemo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hi")
public class D2_getController {

    @GetMapping("/name")
    public String nameReturn() {
        return "Seok hwan";
    }
}
