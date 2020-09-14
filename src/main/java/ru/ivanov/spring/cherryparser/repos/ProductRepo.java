package ru.ivanov.spring.cherryparser.repos;

import ru.ivanov.spring.cherryparser.domain.Product;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductRepo extends CrudRepository<Product, Long> {
    List<Product> findAllByDescriptionContains(String description);
}