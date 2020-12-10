package com.evozon.controller;

import com.evozon.dao.impl.CategoryDAO;
import com.evozon.model.Category;
import com.evozon.model.Product;
import com.evozon.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    ProductService productService;

    @GetMapping(value = "/")
    public String home(ModelMap model) {
        model.addAttribute("product", new Product());
        model.addAttribute("products", productService.getAll());
        model.addAttribute("category", new Category());
        model.addAttribute("categories", CategoryDAO.getAll());
        return "products";
    }

    @GetMapping(value = "/error")
    public ModelAndView errorPage() {
        return new ModelAndView("error");
    }

    @Autowired
    public void setProductService(ProductService productServiceImpl) {
        this.productService = productServiceImpl;
    }
}
