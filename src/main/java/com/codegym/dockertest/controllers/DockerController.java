package com.codegym.dockertest.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerController {
    @GetMapping("")
    public String getData(){
        return "good afternoon";
    }
}
