package com.wheatport.controller;

import com.wheatport.constant.UniversalUrlConstants;
import com.wheatport.form.PersonAddForm;
import com.wheatport.model.Person;
import com.wheatport.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// to access other languages use url that has a parameter[/welcome?lang=tr]

@Controller
@RequestMapping("/")
public class WelcomePageController {

    @Autowired
    PersonRepository personRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String sayHello(ModelMap model) {
        model.addAttribute("greeting", "Hello World from Spring 4 MVC");
        return "welcome";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(ModelMap model) {
        model.addAttribute("greeting", "Hello World Again, from Spring 4 MVC");
        return "welcome";
    }

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String signin(ModelMap model) {
        model.addAttribute("signinMessage", "This is signin page.");
        return "signin";
    }

    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public String signinPOST(ModelMap model) {
        model.addAttribute("signinMessage", "This is signin page.");
        return "signin";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup(ModelMap model) {
        model.addAttribute("signinMessage", "This is signup page.");
        return "signup";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String signupPOST(ModelMap model) {
        model.addAttribute("signinMessage", "This is signup page.");
        return "signup";
    }

    @RequestMapping(value = "/productdetailpage", method = RequestMethod.GET)
    public String productDetailPage(ModelMap model) {
        model.addAttribute("signinMessage", "This is productdetailpage page.");
        return "productdetailpage";
    }

    @RequestMapping(value = "/add-person", method = RequestMethod.GET)
    public String addPerson(ModelMap model) {
        model.addAttribute("addPerson", "This is addPerson page.");
        return UniversalUrlConstants.FORM_ADDPERSON;
    }

    @RequestMapping(value = "/add-person", method = RequestMethod.POST)
    public String addPersonPOST(ModelMap model,@ModelAttribute("personform")PersonAddForm personform) {

        Person person = new Person();
        person.setEmail(personform.getEmail());
        person.setName(personform.getName());
        person.setPassword(personform.getPassword());

        personRepository.save(person);
        personRepository.findAll().forEach(System.out::println);

        model.addAttribute("addPerson", "This is addPerson page.");
        return UniversalUrlConstants.FORM_ADDPERSON;
    }

}
