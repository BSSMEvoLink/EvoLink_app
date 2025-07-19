package com.evolink.backend.controller;

import com.evolink.backend.dto.UserDto;
import com.evolink.backend.model.User;
import com.evolink.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public ResponseEntity<UserDto.Response> register(@RequestBody UserDto.SignupRequest req) {
        User user = userService.signup(req);
        UserDto.Response res = new UserDto.Response();
        res.id = user.getId();
        res.email = user.getEmail();
        res.name = user.getName();
        res.userType = user.getUserType();
        res.token = ""; // JWT 미구현
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
        res.token = ""; // JWT 미구현
        return ResponseEntity.ok(res);
    }
} 