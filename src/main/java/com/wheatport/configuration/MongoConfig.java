package com.wheatport.configuration;

import com.mongodb.MongoClient;
import com.wheatport.converter.UserWriterConverter;
import com.wheatport.event.CascadeSaveMongoEventListener;
import com.wheatport.event.UserCascadeSaveMongoEventListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.env.Environment;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.core.convert.CustomConversions;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import java.util.ArrayList;
import java.util.List;

@Configuration
@EnableMongoRepositories(basePackages = "com.wheatport.repository")
@PropertySource("classpath:locale/config.properties")
public class MongoConfig extends AbstractMongoConfiguration {

    @Autowired
    private Environment env;

    private final List<Converter<?, ?>> converters = new ArrayList<Converter<?, ?>>();

    @Override
    protected String getDatabaseName() {
        return env.getProperty("mongo.database");
    }

    @Override
    public MongoClient mongoClient() {
        return new MongoClient(env.getProperty("mongo.host"), Integer.parseInt(env.getProperty("mongo.port")));
    }

    @Override
    public String getMappingBasePackage() {
        return "com.wheatport";
    }

    @Bean
    public UserCascadeSaveMongoEventListener userCascadingMongoEventListener() {
        return new UserCascadeSaveMongoEventListener();
    }

    @Bean
    public CascadeSaveMongoEventListener cascadingMongoEventListener() {
        return new CascadeSaveMongoEventListener();
    }

    @Override
    public org.springframework.data.convert.CustomConversions customConversions() {
        converters.add(new UserWriterConverter());
        return new CustomConversions(converters);
    }

    @Bean
    public GridFsTemplate gridFsTemplate() throws Exception {
        return new GridFsTemplate(mongoDbFactory(), mappingMongoConverter());
    }
}