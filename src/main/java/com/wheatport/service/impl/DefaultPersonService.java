package com.wheatport.service.impl;

import com.wheatport.constant.MessageType;
import com.wheatport.constant.UniversalUrlConstants;
import com.wheatport.form.PersonAddForm;
import com.wheatport.model.Person;
import com.wheatport.service.PersonService;
import com.wheatport.utils.GlobalMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

@Repository
public class DefaultPersonService implements PersonService {

    @Autowired
    MongoOperations mongoOperations;
    @Autowired
    GlobalMessage globalMessage;

    @Override
    public boolean create(ModelMap model, PersonAddForm personform) {
        Person person = new Person();
        populatePerson(person, personform);

        try {
            mongoOperations.save(person);
        } catch (Exception e) {
            globalMessage.addMessage(MessageType.ERROR, "globalmessage.email.already.existed.error.text", model);
            return false;
        }
        return true;
    }

    private void populatePerson(Person person, PersonAddForm personform) {
        person.setEmail(personform.getEmail());
        person.setName(personform.getName());
        person.setPassword(personform.getPassword());
    }

}
