/**
 * 
 * !!! Deprecate File !!!
 * !!! 사용하지 않는 파일입니다 !!!
 * 
 */

package com.fastcampus.nodemo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.fastcampus.nodemo.Services.Services;

// IM CLIENT!!

@RestController
@RequestMapping("/api/hi")
public class D2_getController {

    @Autowired
    Services service;

    @GetMapping("")
    public String getHello() {
        return service.hello();
    }

    @GetMapping("/hihi")
    public String getHihi() {
        return service.hihi();
    }
}
