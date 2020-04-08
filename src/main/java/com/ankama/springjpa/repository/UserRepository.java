package com.ankama.springjpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ankama.springjpa.entity.User;

public interface UserRepository extends JpaRepository<User, Long>
{

}
