package ru.ivanov.spring.cherryparser.repos;

import ru.ivanov.spring.cherryparser.domain.ProductType;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductTypeRepo extends CrudRepository<ProductType, Long> {
    List<ProductType> findById(Integer id);
}