package com.example.sweater.controller;

import com.example.sweater.domain.ActiveUserStore;
import com.example.sweater.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
public class CheckController {
    @Autowired
    ActiveUserStore activeUserStore;
    SessionRegistry sessionRegistry;
    @GetMapping("/check")
    public String main(Map<String, Object> model, Locale locale) {
        model.put("username", getName());
        model.put("users", activeUserStore.getUsers());
        listLoggedInUsers();
        return "check";
    }
    @PostMapping("/check")
    public String add(
            @AuthenticationPrincipal User user,
            @RequestParam Model model
    ) {
        return "check";
    }
    public String getName() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            return ((UserDetails)principal).getUsername();
        } else {
            return principal.toString();
        }
    }
    public void listLoggedInUsers() {
        final List<Object> allPrincipals = sessionRegistry.getAllPrincipals();
        for(final Object principal : allPrincipals) {
            if(principal instanceof User) {
                final User user = (User) principal;
                System.out.println(user);
            }
        }
    }
}
