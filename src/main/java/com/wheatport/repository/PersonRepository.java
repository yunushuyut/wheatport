package com.wheatport.repository;

import com.wheatport.model.Person;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface PersonRepository extends MongoRepository<Person, String> {

    public Person getByName(String name);
    public List<Person> getByEmail(String email);

}