package com.evozon.model;

import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Date;

@ToString
@Entity
@Table(name="product")
@EqualsAndHashCode
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    @Column(name = "id", updatable = false, nullable = false)
    @EqualsAndHashCode.Exclude
    private int id;
    @Column(unique = true)
    @NotBlank
    private String code;
    @Column(unique = true)
    @NotBlank
    private String name;
    @Column
    @EqualsAndHashCode.Exclude
    private Date creationDate;
    @ManyToOne
    @JoinColumn(name = "categoryId", referencedColumnName = "id")
    @EqualsAndHashCode.Exclude
    private Category category;

    @Column
    private double price;

    public Product() {
    }

    public Product(int id, @NotBlank String code, @NotBlank String name, Date creationDate, Category category, double price) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.creationDate = creationDate;
        this.category = category;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public double getPrice() {
        return price;
    }

    public Category getCategory() {
        return category;
    }
    public void setCategory(Category category) {
        this.category = category;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

}
