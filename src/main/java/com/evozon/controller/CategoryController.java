package com.evozon.controller;

import com.evozon.dao.impl.CategoryDAO;
import com.evozon.dto.ProductDTO;
import com.evozon.exception.DataGenericException;
import com.evozon.model.Category;
import com.evozon.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;

@RestController
public class CategoryController {
    public static final String PRODUCT = "product";
    public static final String CATEGORY = "category";

    @PostMapping(value = "/getCategoryById")
    public ModelAndView getById(String id, ModelMap modelMap) {
        try {
            Category category = CategoryDAO.getById(Integer.parseInt(id));
            modelMap.addAttribute("id", id);
            return new ModelAndView(CATEGORY, CATEGORY, category);
        } catch (NumberFormatException e) {
            throw new DataGenericException("Invalid input format. Use numbers 0-200");
        }
    }

    @GetMapping(value = "/showAddCategoryForm")
    public ModelAndView loadCategoriesPage() {
        return new ModelAndView("addCategory", CATEGORY, new Category());
    }

    @GetMapping(value = "/singleCategoryPage")
    public ModelAndView showSingleCategory() {
        return new ModelAndView(CATEGORY, CATEGORY, new Category());
    }


    @PostMapping(value = "/addCategory")
    public RedirectView addCategory(@Valid @ModelAttribute Category category, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            throw new DataGenericException(String.format("Invalid input while adding category: %s", category.getName()));
        }
        category.setId(0);
        model.addAttribute(CATEGORY, category);
        CategoryDAO.addCategory(category);

        return new RedirectView("/");
    }

}
