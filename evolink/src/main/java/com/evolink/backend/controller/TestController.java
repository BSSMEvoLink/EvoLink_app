package com.evolink.backend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    
    @GetMapping("/")
    public String home() {
        return "EvoLink Backend Server is running!";
    }
    
    @GetMapping("/api/test")
    public String test() {
        return "API is working!";
    }
} 