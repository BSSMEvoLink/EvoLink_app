package com.evolink.backend.service;

import com.evolink.backend.dto.UserDto;
import com.evolink.backend.model.User;
import com.evolink.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    public User signup(UserDto.SignupRequest req) {
        if (userRepository.existsByEmail(req.email)) {
            throw new RuntimeException("이미 가입된 이메일입니다.");
        }
        User user = new User();
        user.setEmail(req.email);
        user.setPassword(passwordEncoder.encode(req.password));
        user.setName(req.name);
        user.setUserType(req.userType);
        return userRepository.save(user);
    }

    public User login(UserDto.LoginRequest req) {
        Optional<User> userOpt = userRepository.findByEmail(req.email);
        if (userOpt.isEmpty()) throw new RuntimeException("이메일이 존재하지 않습니다.");
        User user = userOpt.get();
        if (!passwordEncoder.matches(req.password, user.getPassword())) {
            throw new RuntimeException("비밀번호가 일치하지 않습니다.");
        }
        return user;
    }
} 