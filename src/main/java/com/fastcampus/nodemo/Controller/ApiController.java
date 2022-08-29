package com.fastcampus.nodemo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiController {

    @GetMapping("/hello")
    public String hello() {
        return "Hello?";
    }

    @GetMapping(path = "/hello2")
    public String hello2() {
        return "Hello2";
    }

    @GetMapping("/pathvar/{name}")
    public String pathVar(@PathVariable(name = "name") String anyname) {
        return "Your name is " + anyname + ". Right?";
    }

}
