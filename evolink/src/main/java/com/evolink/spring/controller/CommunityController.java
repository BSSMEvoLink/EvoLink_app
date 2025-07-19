package com.evolink.spring.controller;

import com.evolink.spring.model.CommunityPost;
import com.evolink.spring.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/community")
@CrossOrigin(origins = "*")
public class CommunityController {
    @Autowired
    private CommunityService communityService;

    @GetMapping("/posts")
    public ResponseEntity<List<CommunityPost>> getPosts(@RequestParam(required = false) String tag) {
        if (tag != null && !tag.isEmpty()) {
            return ResponseEntity.ok(communityService.getPostsByTag(tag));
        }
        return ResponseEntity.ok(communityService.getAllPosts());
    }

    @PostMapping("/posts")
    public ResponseEntity<CommunityPost> createPost(@RequestBody CommunityPost post) {
        return ResponseEntity.ok(communityService.createPost(post));
    }

    @GetMapping("/posts/{id}")
    public ResponseEntity<CommunityPost> getPost(@PathVariable Long id) {
        return ResponseEntity.ok(communityService.getPostById(id));
    }

    @DeleteMapping("/posts/{id}")
    public ResponseEntity<Void> deletePost(@PathVariable Long id) {
        communityService.deletePost(id);
        return ResponseEntity.ok().build();
    }
} 