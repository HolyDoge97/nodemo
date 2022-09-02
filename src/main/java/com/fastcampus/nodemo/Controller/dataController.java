package com.fastcampus.nodemo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.fastcampus.nodemo.JPA.freeboard;

import com.fastcampus.nodemo.repository.boardRepo;

@RestController
@RequestMapping("/data")
public class dataController {

    @Autowired
    private boardRepo Repo;

    @GetMapping("/listall")
    public List<freeboard> listAll(Model model) {
        System.out.println("WORKING");
        List<freeboard> showList = Repo.findAll();
        model.addAttribute(showList);
        return showList;
    }

}
