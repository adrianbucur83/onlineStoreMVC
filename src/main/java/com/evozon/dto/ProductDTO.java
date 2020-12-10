package com.evozon.dto;

import com.evozon.csv.CSVColumn;
import com.evozon.csv.CSVField;
import lombok.Data;
import org.springframework.stereotype.Component;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@Component
public class ProductDTO {
    @NotBlank
    @CSVField(column = CSVColumn.CODE)
    private String code;
    @NotBlank
    @CSVField(column = CSVColumn.NAME)
    private String name;
    @NotNull
    @CSVField(column = CSVColumn.PRICE)
    private String price;
    @CSVField(column = CSVColumn.CATEGORY_ID)
    @NotNull
    private String categoryId;
}
