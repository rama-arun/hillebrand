package com.hellokoding.auth.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.hellokoding.auth.model.User;

public interface UserRepository extends MongoRepository<User, Long> {
    User findByUsername(String username);
}
