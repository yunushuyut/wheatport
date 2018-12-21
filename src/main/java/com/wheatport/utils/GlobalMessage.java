package com.wheatport.utils;

import com.wheatport.constant.MessageType;
import org.springframework.context.annotation.PropertySource;
import org.springframework.ui.ModelMap;

public class GlobalMessage {
    public static void addMessage(String type, String s, ModelMap model) {

        switch (type) {
            case MessageType.INFO:
                model.addAttribute("globalmessagetype",MessageType.INFO);
                model.addAttribute("globalmessagecontent",s);
                break;
            case MessageType.ERROR:
                model.addAttribute("globalmessagetype",MessageType.ERROR);
                model.addAttribute("globalmessagecontent",s);
                break;
            case MessageType.SUCCESS:
                model.addAttribute("globalmessagetype",MessageType.SUCCESS);
                model.addAttribute("globalmessagecontent",s);
                break;
            case MessageType.WARNING:
                model.addAttribute("globalmessagetype",MessageType.WARNING);
                model.addAttribute("globalmessagecontent",s);
                break;
            default:
                break;
        }
    }
}
