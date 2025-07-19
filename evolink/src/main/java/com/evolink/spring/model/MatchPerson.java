package com.evolink.spring.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "match_persons")
public class MatchPerson {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String industry;

    @Column(nullable = false)
    private String stack;

    @Column(nullable = false)
    private String userType;

    @Column(nullable = false)
    private String location;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String imageUrl;

    private String email;

    private String description;

    private LocalDateTime createdAt = LocalDateTime.now();

    // Getter/Setter
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getIndustry() { return industry; }
    public void setIndustry(String industry) { this.industry = industry; }
    public String getStack() { return stack; }
    public void setStack(String stack) { this.stack = stack; }
    public String getUserType() { return userType; }
    public void setUserType(String userType) { this.userType = userType; }
    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
} 