package com.evolink.backend.service;

import com.evolink.backend.model.CommunityPost;
import com.evolink.backend.repository.CommunityPostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CommunityPostService {
    private final CommunityPostRepository communityPostRepository;

    public List<CommunityPost> findAll() {
        return communityPostRepository.findAll();
    }

    public CommunityPost save(CommunityPost post) {
        return communityPostRepository.save(post);
    }

    public CommunityPost findById(Long id) {
        return communityPostRepository.findById(id).orElse(null);
    }
} 