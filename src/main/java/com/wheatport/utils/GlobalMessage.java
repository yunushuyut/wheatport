package com.wheatport.utils;

import com.wheatport.constant.MessageType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.ui.ModelMap;

import java.util.Properties;

@PropertySource("classpath:locale/messages.properties")
public class GlobalMessage {

    @Autowired
    private Environment env;

    public void addMessage(String type, String propertytext, ModelMap model) {
        switch (type) {
            case MessageType.INFO:
                model.addAttribute("globalmessagetype",MessageType.INFO);
                model.addAttribute("globalmessagecontent",env.getProperty(propertytext));
                break;
            case MessageType.ERROR:
                model.addAttribute("globalmessagetype",MessageType.ERROR);
                model.addAttribute("globalmessagecontent",env.getProperty(propertytext));
                break;
            case MessageType.SUCCESS:
                model.addAttribute("globalmessagetype",MessageType.SUCCESS);
                model.addAttribute("globalmessagecontent",env.getProperty(propertytext));
                break;
            case MessageType.WARNING:
                model.addAttribute("globalmessagetype",MessageType.WARNING);
                model.addAttribute("globalmessagecontent",env.getProperty(propertytext));
                break;
            default:
                break;
        }
    }
}
