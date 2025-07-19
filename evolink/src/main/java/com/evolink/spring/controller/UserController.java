package com.evolink.spring.controller;

import com.evolink.spring.dto.UserDto;
import com.evolink.spring.model.User;
import com.evolink.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins =*
public class UserController[object Object]    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public ResponseEntity<UserDto.Response> register(@RequestBody UserDto.SignupRequest req) {
        User user = userService.signup(req);
        
        UserDto.Response res = new UserDto.Response();
        res.id = user.getId();
        res.email = user.getEmail();
        res.name = user.getName();
        res.userType = user.getUserType();
        res.token =dummy-token"; // JWT 미구현
        
        return ResponseEntity.ok(res);
    }

    @PostMapping("/login")
    public ResponseEntity<UserDto.Response> login(@RequestBody UserDto.LoginRequest req) {
        User user = userService.login(req);
        
        UserDto.Response res = new UserDto.Response();
        res.id = user.getId();
        res.email = user.getEmail();
        res.name = user.getName();
        res.userType = user.getUserType();
        res.token =dummy-token"; // JWT 미구현
        
        return ResponseEntity.ok(res);
    }
} 