package com.evozon.controller;

import com.evozon.dto.ProductDTO;
import com.evozon.exception.DataGenericException;
import com.evozon.model.Product;
import com.evozon.mappers.ProductMapper;
import com.evozon.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;

@RestController
public class ProductController {
    public static final String PRODUCT = "product";
    private ProductMapper productMapper;
    private ProductServiceImpl productService;


    @GetMapping(value = "/showAddProductForm")
    public ModelAndView loadProductsPage() {
        return new ModelAndView("addProduct", "productDTO", new ProductDTO());
    }

    @PostMapping(value = "/getById")
    public ModelAndView getById(String id, ModelMap modelMap) {
        Product product = productService.getById(Integer.parseInt(id));
        if (product == null)
            throw new DataGenericException("Invalid product id.");
        modelMap.addAttribute("id", id);
        return new ModelAndView(PRODUCT, PRODUCT, product);
    }

    @GetMapping(value = "/singleProductPage")
    public ModelAndView singleProduct() {
        return new ModelAndView("getProductById", PRODUCT, new Product());
    }

    @PostMapping(value = "/addProduct")
    public RedirectView addProduct(@Valid @ModelAttribute ProductDTO productDTO, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
           throw new DataGenericException(String.format("Invalid input while adding product: %s", productDTO));
        }
        model.addAttribute("name", productDTO.getName());
        model.addAttribute("code", productDTO.getCode());
        model.addAttribute("price", productDTO.getPrice());
        model.addAttribute("categoryId", productDTO.getCategoryId());

        Product product = productMapper.map(productDTO);

        if (product.getCategory() == null)
                return new RedirectView("/error");

        productService.addProduct(product);

        return new RedirectView("/");
    }

    @Autowired
    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    @Autowired
    public void setProductService(ProductServiceImpl productServiceImpl) {
        this.productService = productServiceImpl;
    }
}
