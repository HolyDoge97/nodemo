package com.fastcampus.nodemo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class basicController {

    @GetMapping("/")
    public String indexControll() {
        return "index";
    }

}
