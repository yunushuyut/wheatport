package com.wheatport.repository.impl;

import com.mongodb.DB;
import com.mongodb.DBObject;
import com.wheatport.configuration.MongoConfig;
import com.wheatport.model.Person;
import com.wheatport.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;

import java.util.Objects;

public abstract class DefaultPersonRepository implements PersonRepository {

    @Autowired
    MongoConfig mongo;
    @Autowired
    private Environment env;

    @Override
    public Person getByName(String name) {

        return null;
    }

    @Override
    public Person getByEmail(String name) {

        Person person = new Person();
        DBObject dbo = (DBObject) mongo.mongoClient().getDatabase(Objects.requireNonNull(env.getProperty("mongo.database"))).getCollection("persons"); //with default server and port adress

        person.setName((String) dbo.get("name"));
        person.setEmail((String) dbo.get("email"));
        person.setPassword((String) dbo.get("password"));
        person.setId((String) dbo.get("id"));

        return null;
    }

}
