package com.evozon.service.impl;

import com.evozon.dao.ProductDAO;
import com.evozon.model.Product;
import com.evozon.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MockProductService implements ProductService {

    private ProductDAO productDAO;

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
}
