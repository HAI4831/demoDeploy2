package org.example.demodeploy2.controller;

import org.example.demodeploy2.entity.User;
import org.example.demodeploy2.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController
{
    private UserRepository repository;
    @Autowired
    public HomeController(UserRepository repository) {
        this.repository = repository;
    }
    @GetMapping("/")
    public String home(Model model) {
        List<User> users = repository.findAll();
        model.addAttribute("users", users);
        return "home";
    }
}
