package com.evolink.backend.controller;

import com.evolink.backend.model.MatchPerson;
import com.evolink.backend.service.MatchPersonService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/match")
@RequiredArgsConstructor
public class MatchPersonController {
    private final MatchPersonService matchPersonService;

    @GetMapping
    public List<MatchPerson> getAllPersons() {
        return matchPersonService.findAll();
    }

    @PostMapping
    public MatchPerson createPerson(@RequestBody MatchPerson person) {
        return matchPersonService.save(person);
    }

    @GetMapping("/{id}")
    public MatchPerson getPerson(@PathVariable Long id) {
        return matchPersonService.findById(id);
    }
} 