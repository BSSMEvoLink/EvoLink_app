package com.evolink.spring.service;

import com.evolink.spring.model.CommunityPost;
import com.evolink.spring.repository.CommunityPostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CommunityService {
    @Autowired
    private CommunityPostRepository communityPostRepository;

    public List<CommunityPost> getAllPosts() {
        return communityPostRepository.findAllByOrderByCreatedAtDesc();
    }

    public List<CommunityPost> getPostsByTag(String tag) {
        return communityPostRepository.findByTagContainingIgnoreCase(tag);
    }

    public CommunityPost createPost(CommunityPost post) {
        return communityPostRepository.save(post);
    }

    public CommunityPost getPostById(Long id) {
        return communityPostRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("게시글을 찾을 수 없습니다."));
    }

    public void deletePost(Long id) {
        communityPostRepository.deleteById(id);
    }
} 