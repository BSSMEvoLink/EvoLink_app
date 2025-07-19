package com.evolink.spring.repository;

import com.evolink.spring.model.MatchPerson;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface MatchPersonRepository extends JpaRepository<MatchPerson, Long> {
    List<MatchPerson> findByIndustryAndStackAndUserTypeAndLocation(
        String industry, String stack, String userType, String location);
    List<MatchPerson> findByIndustry(String industry);
    List<MatchPerson> findByUserType(String userType);
} 