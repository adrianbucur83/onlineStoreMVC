package com.evozon.dao.impl;


import com.evozon.exception.DataGenericException;
import com.evozon.model.Category;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

import static com.evozon.dao.impl.SessionCreator.buildSessionFactory;

public class CategoryDAO {
    static Session sessionObj;
    private static final Logger LOG = LoggerFactory.getLogger(CategoryDAO.class);

    private CategoryDAO() {
        throw new IllegalStateException("DAO Utility class");
    }

    public static Category getById(int id) {
        try {
            sessionObj = buildSessionFactory().getCurrentSession();
            sessionObj.beginTransaction();
            return sessionObj.get(Category.class, id);
        } catch (Exception sqlException) {
            throw new DataGenericException("Invalid product ID");
        } finally {
            if (sessionObj != null) {
                sessionObj.close();
            }
        }
    }

    @SuppressWarnings("unchecked")
    public static List<Category> getAll() {
        try {
            sessionObj = buildSessionFactory().openSession();
            return sessionObj.createQuery("from Category ").list();
        } catch (Exception sqlException) {
            sqlException.printStackTrace();
        } finally {
            if (sessionObj != null) {
                sessionObj.close();
            }
        }
        return new ArrayList<>();
    }

    public static void addCategory(Category category) {
        try {
            sessionObj = buildSessionFactory().openSession();
            sessionObj.beginTransaction();
            sessionObj.save(category);
            sessionObj.getTransaction().commit();
        } catch (Exception sqlException) {
            if (null != sessionObj.getTransaction()) {
                LOG.info("\n.......Transaction Is Being Rolled Back.......\n");
                sessionObj.getTransaction().rollback();
            }
            sqlException.printStackTrace();
        } finally {
            if (sessionObj != null) {
                sessionObj.close();
            }
        }
    }

}
