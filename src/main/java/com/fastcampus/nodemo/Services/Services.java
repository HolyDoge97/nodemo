package com.fastcampus.nodemo.Services;

import java.net.URI;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

@Service
public class Services {

    public String hello() {
        URI uri = UriComponentsBuilder
                .fromUriString("http://localhost")
                .path("/api/hello")
                .encode()
                .build()
                .toUri();
        System.out.println(uri.toString());
        RestTemplate restTemplate = new RestTemplate();
        String result = restTemplate.getForObject(uri, String.class);
        return result;

    }

}
