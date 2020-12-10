package com.evozon.csv;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
public enum CSVColumn {

    CODE("CODE"),
    NAME("NAME"),
    PRICE("PRICE"),
    CATEGORY_ID("CATEGORY_ID"),

    DEFAULT("");

    @Getter
    private final String column;
}