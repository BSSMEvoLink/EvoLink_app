package com.evolink.backend.service;

import com.evolink.backend.model.MatchPerson;
import com.evolink.backend.repository.MatchPersonRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MatchPersonService {
    private final MatchPersonRepository matchPersonRepository;

    public List<MatchPerson> findAll() {
        return matchPersonRepository.findAll();
    }

    public MatchPerson save(MatchPerson person) {
        return matchPersonRepository.save(person);
    }

    public MatchPerson findById(Long id) {
        return matchPersonRepository.findById(id).orElse(null);
    }
} 