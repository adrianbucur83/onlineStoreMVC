package com.evozon.mappers;

import com.evozon.dao.impl.CategoryDAO;
import com.evozon.dto.ProductDTO;
import com.evozon.exception.DataGenericException;
import com.evozon.model.Category;
import com.evozon.model.Product;
import org.springframework.stereotype.Component;

import javax.validation.Valid;
import java.util.Date;

@Component
public class ProductMapper {

    public Product map(@Valid ProductDTO productDTO) {
        Product product = new Product();
        try {
            product.setName(productDTO.getName());
            product.setCode(productDTO.getCode());
            product.setPrice(Double.parseDouble(productDTO.getPrice()));
            product.setCreationDate(new Date());
            Category category = CategoryDAO.getById(Integer.parseInt(productDTO.getCategoryId()));
            if (category == null)
                throw new DataGenericException("Invalid category ID, check input.");
            product.setCategory(category);
            return product;
        } catch (Exception e) {
            throw new DataGenericException("Product mapping error. Check input.");
        }

    }

}
