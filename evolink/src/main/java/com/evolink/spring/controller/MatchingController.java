package com.evolink.spring.controller;

import com.evolink.spring.model.MatchPerson;
import com.evolink.spring.service.MatchingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/matching")
@CrossOrigin(origins = "*")
public class MatchingController {

    @Autowired
    private MatchingService matchingService;

    @GetMapping("/users")
    public ResponseEntity<List<MatchPerson>> getMatchingUsers(
            @RequestParam(required = false) String industry,
            @RequestParam(required = false) String stack,
            @RequestParam(required = false) String userType,
            @RequestParam(required = false) String location) {
        if (industry != null && stack != null && userType != null && location != null) {
            return ResponseEntity.ok(matchingService.getMatchingUsers(industry, stack, userType, location));
        }
        return ResponseEntity.ok(matchingService.getAllUsers());
    }

    @PostMapping("/users")
    public ResponseEntity<MatchPerson> createUser(@RequestBody MatchPerson user) {
        return ResponseEntity.ok(matchingService.createUser(user));
    }

    @GetMapping("/users/industry/{industry}")
    public ResponseEntity<List<MatchPerson>> getUsersByIndustry(@PathVariable String industry) {
        return ResponseEntity.ok(matchingService.getUsersByIndustry(industry));
    }

    @GetMapping("/users/type/{userType}")
    public ResponseEntity<List<MatchPerson>> getUsersByUserType(@PathVariable String userType) {
        return ResponseEntity.ok(matchingService.getUsersByUserType(userType));
    }
} 