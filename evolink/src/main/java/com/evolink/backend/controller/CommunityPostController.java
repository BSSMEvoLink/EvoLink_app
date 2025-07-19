package com.evolink.backend.controller;

import com.evolink.backend.model.CommunityPost;
import com.evolink.backend.service.CommunityPostService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/community")
@RequiredArgsConstructor
public class CommunityPostController {
    private final CommunityPostService communityPostService;

    @GetMapping
    public List<CommunityPost> getAllPosts() {
        return communityPostService.findAll();
    }

    @PostMapping
    public CommunityPost createPost(@RequestBody CommunityPost post) {
        return communityPostService.save(post);
    }

    @GetMapping("/{id}")
    public CommunityPost getPost(@PathVariable Long id) {
        return communityPostService.findById(id);
    }
} 