/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.controller;

import com.cnpm.pojos.Account;
import com.cnpm.services.AccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ADMIN
 */
@Controller
public class HomeController {
    @Autowired
    private AccountService userDetailsService;

    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("acc", new Account());
        return "index";
    }
    
}
