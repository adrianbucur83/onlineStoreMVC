package com.evozon.dao.impl;

import com.evozon.dao.ProductDAO;
import com.evozon.exception.DataGenericException;
import com.evozon.model.Product;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

import static com.evozon.dao.impl.SessionCreator.buildSessionFactory;

@Repository
public class DefaultProductDAO implements ProductDAO {
    private Session sessionObj;
    private static final Logger LOG = LoggerFactory.getLogger(DefaultProductDAO.class);

    @Override
    public Product getById(int id) {
        try {
            sessionObj = buildSessionFactory().openSession();
            return sessionObj.get(Product.class, id);

        } catch (Exception sqlException) {
            throw new DataGenericException("Invalid product ID");
        } finally {
            if (sessionObj != null) {
                sessionObj.close();
            }
        }
    }

    @Override
    public List<Product> getAll() {
        try {
            sessionObj = buildSessionFactory().openSession();
            return sessionObj.createQuery("from Product ").list();
        } catch (Exception sqlException) {
            throw new DataGenericException("Unable to fetch products list. Please try again later");
        } finally {
            if (sessionObj != null)
                sessionObj.close();
        }
    }

    @Override
    @SuppressWarnings("unchecked")
    public void addProduct(Product product) {
        try {
            // Getting Session Object From SessionFactory
            sessionObj = buildSessionFactory().openSession();
            // Getting Transaction Object From Session Object
            sessionObj.beginTransaction();
            sessionObj.save(product);
            sessionObj.getTransaction().commit();
            if (LOG.isInfoEnabled()) LOG.info(String.format("Added product to db: %s", product.toString()));

        } catch (Exception sqlException) {
            if (sessionObj.getTransaction() != null) {
                LOG.info(String.format("%n.......Transaction Is Being Rolled Back.......%n Unable to add product: %s", product.toString()));
                sessionObj.getTransaction().rollback();
            }
        } finally {
            if (sessionObj != null)
                sessionObj.close();
        }
    }

}
