package com.example.sweater.controller;

import com.example.sweater.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CheckController {
    @GetMapping("/check")
    public String main(Model model) {
        return "check";
    }
    @PostMapping("/check")
    public String add(
            @AuthenticationPrincipal User user,
            @RequestParam Model model
    ) {
        return "check";
    }
}