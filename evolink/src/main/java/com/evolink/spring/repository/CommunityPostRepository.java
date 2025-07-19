package com.evolink.spring.repository;

import com.evolink.spring.model.CommunityPost;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CommunityPostRepository extends JpaRepository<CommunityPost, Long> {
    List<CommunityPost> findByTagContainingIgnoreCase(String tag);
    List<CommunityPost> findAllByOrderByCreatedAtDesc();
} 