package com.hellokoding.auth.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.hellokoding.auth.model.Role;

public interface RoleRepository extends MongoRepository<Role, Long>{
}
