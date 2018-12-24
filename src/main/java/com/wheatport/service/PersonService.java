package com.wheatport.service;

import com.wheatport.form.PersonAddForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

public interface PersonService {
    public boolean create(ModelMap model, PersonAddForm personform);
}
