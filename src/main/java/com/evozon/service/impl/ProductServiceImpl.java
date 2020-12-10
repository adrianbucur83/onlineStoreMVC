package com.evozon.service.impl;

import com.evozon.model.Product;
import com.evozon.dao.ProductDAO;
import com.evozon.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    ProductDAO productDAO;

    @Override
    public Product getById(int id) {
        return productDAO.getById(id);
    }

    @Override
    public List<Product> getAll() {
        return productDAO.getAll();
    }

    @Override
    public void addProduct(Product product) {
        productDAO.addProduct(product);
    }

    @Autowired
    public void setProductDAO(ProductDAO defaultProductDAO) {
        this.productDAO = defaultProductDAO;
    }
}
