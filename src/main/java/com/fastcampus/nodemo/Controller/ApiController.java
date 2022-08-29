package com.fastcampus.nodemo.Controller;

import com.fastcampus.nodemo.DTO.TestDTO;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

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
    // {name}을 매개변수 anyname에 매칭
    public String pathVar(@PathVariable(name = "name") String anyname) {
        return "Your name is " + anyname + ". Right?";
    }

    // 파라미터를 RequestParam과 Map 자료형으로 받는 법
    // Key ,value 다 무엇이 들어올지 모를 때 사용
    @GetMapping("/queryparam")
    public String queryParam(@RequestParam Map<Object, Object> qparam) {
        StringBuffer sb = new StringBuffer();
        qparam.entrySet().forEach(entry -> {
            System.out.println(entry.getKey());
            System.out.println(entry.getValue());
            System.out.println("\n");
            sb.append(entry.getKey() + " = " + entry.getValue() + "\n");
        });
        return sb.toString();
    }

    // 파라미터를 여러개의 RequstParam으로 받는 법
    // Key는 고정이고, 고정되고 적은양의 파라미터를 받을때 사용
    @GetMapping("/qparam2")
    public String qparam2(
            @RequestParam String name,
            @RequestParam String id,
            @RequestParam int phoneNum) {

        return "your name is " + name + "\n" + "Your ID & PNum is : " + id + phoneNum;
    }

    // 파라미터를 DTO로 받는 방법
    // Key는 고정이고, 많은 양의 파라미터를 받을 떄 사용.
    // 젤 많이 쓰임
    @GetMapping("/qparam3")
    public String qparam3(TestDTO dto) {
        return dto.toString();

    }

    @GetMapping("/")
    public String goIndex() {
        return "index.html";
    }

}
