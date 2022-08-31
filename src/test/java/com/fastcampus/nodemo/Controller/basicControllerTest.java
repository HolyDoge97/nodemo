package com.fastcampus.nodemo.Controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

@WebAppConfiguration
@WebMvcTest
public class basicControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void indexControll() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/rtest"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string("returnTest?"));
    }

}
