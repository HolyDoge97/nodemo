package com.fastcampus.nodemo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.fastcampus.nodemo.repository.boardRepo;
import lombok.RequiredArgsConstructor;

// feature / Test에 푸시할 내용임
@Controller // JSON 형태 결과값을 반환해줌 (@ResponseBody가 필요없음)
@RequiredArgsConstructor // final 객체를 Constructor Injection 해줌. (Autowired 역할)
public class basicController {

    final boardRepo repo;

    @GetMapping("")
    public String indexControll() {
        return "index";
    }

    @GetMapping("/returnTest")
    public String testControll() {
        return "returnTest";
    }

    @GetMapping("/writepage")
    public String writePage() {
        return "writepage";
    }

}
