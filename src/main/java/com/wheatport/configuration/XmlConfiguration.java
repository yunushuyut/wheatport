package com.wheatport.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({"classpath*:wheatportApplicationContext.xml"})
public class XmlConfiguration {
}