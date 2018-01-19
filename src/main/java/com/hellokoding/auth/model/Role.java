package com.hellokoding.auth.model;

import java.util.Set;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="role")
public class Role {
	
    private String name;
    private Set<User> users;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}
