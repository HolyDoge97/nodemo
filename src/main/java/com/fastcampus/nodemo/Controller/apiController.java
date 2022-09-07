package com.fastcampus.nodemo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fastcampus.nodemo.repository.boardRepo;

@RestController
@RequestMapping("/api")
public class apiController {
    @Autowired
    boardRepo repo;

    @GetMapping("/apitest/{param}")
    public String apitest(@RequestParam String param) {
        return "You input this Parameter : " + param + ". Right?";
    }
}
