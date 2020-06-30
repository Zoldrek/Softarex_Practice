package com.example.sweater.controller;

import com.example.sweater.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Locale;
import java.util.Map;

@Controller
public class CheckController {
    @GetMapping("/check")
    public String main(Map<String, Object> model, Locale locale) {
        model.put("username", getName());
        //listLoggedInUsers();
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
}
