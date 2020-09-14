package ru.ivanov.spring.cherryparser.repos;

import ru.ivanov.spring.cherryparser.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
