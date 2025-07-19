package com.evolink.spring.service;

import com.evolink.spring.model.MatchPerson;
import com.evolink.spring.repository.MatchPersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class MatchingService {
    @Autowired
    private MatchPersonRepository matchPersonRepository;

    public List<MatchPerson> getMatchingUsers(String industry, String stack, String userType, String location) {
        return matchPersonRepository.findByIndustryAndStackAndUserTypeAndLocation(
            industry, stack, userType, location);
    }

    public List<MatchPerson> getAllUsers() {
        return matchPersonRepository.findAll();
    }

    public MatchPerson createUser(MatchPerson user) {
        return matchPersonRepository.save(user);
    }

    public List<MatchPerson> getUsersByIndustry(String industry) {
        return matchPersonRepository.findByIndustry(industry);
    }

    public List<MatchPerson> getUsersByUserType(String userType) {
        return matchPersonRepository.findByUserType(userType);
    }
} 