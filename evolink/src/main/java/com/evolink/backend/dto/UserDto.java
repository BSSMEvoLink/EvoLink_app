package com.evolink.backend.dto;

public class UserDto {
    public static class SignupRequest {
        public String email;
        public String password;
        public String name;
        public String userType;
    }
    public static class LoginRequest {
        public String email;
        public String password;
    }
    public static class Response {
        public Long id;
        public String email;
        public String name;
        public String userType;
        public String token;
    }
} 