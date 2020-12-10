package com.evozon.dao.impl;

import com.evozon.dao.ProductDAO;
import com.evozon.model.Category;
import com.evozon.model.Product;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class MockProductDAO implements ProductDAO {

    @Override
    public Product getById(int id) {

        return new Product(id, "mockCode", "mockName", new Date(), new Category(), 30);
    }

    @Override
    public List<Product> getAll() {
        Product product1 = new Product(1, "mockCode1", "mockName1", new Date(), new Category(), 10);
        Product product2 = new Product(2, "mockCode2", "mockName2", new Date(), new Category(), 102);
        Product product3 = new Product(3, "mockCode3", "mockName3", new Date(), new Category(), 105);
        Product product4 = new Product(4, "mockCode4", "mockName3", new Date(), new Category(), 150);

        List<Product> products = new ArrayList<>();
        products.add(product1);
        products.add(product2);
        products.add(product3);
        products.add(product4);

        return products;
    }

    @Override
    public void addProduct(Product product) {
        /**no need too add anything*/
    }
}
