package com.evolink.spring.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "community_posts")
public class CommunityPost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String tag;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String content;

    private String imagePath;

    @Column(nullable = false)
    private String authorName;

    private String authorImagePath;

    private LocalDateTime createdAt = LocalDateTime.now();

    // Getter/Setter
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getTag() { return tag; }
    public void setTag(String tag) { this.tag = tag; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public String getImagePath() { return imagePath; }
    public void setImagePath(String imagePath) { this.imagePath = imagePath; }
    public String getAuthorName() { return authorName; }
    public void setAuthorName(String authorName) { this.authorName = authorName; }
    public String getAuthorImagePath() { return authorImagePath; }
    public void setAuthorImagePath(String authorImagePath) { this.authorImagePath = authorImagePath; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
} 