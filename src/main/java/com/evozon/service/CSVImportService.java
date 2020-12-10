package com.evozon.service;

import com.evozon.csv.CSVProductParser;
import com.evozon.dto.ProductDTO;

import java.io.File;
import java.util.*;

import com.evozon.exception.DataGenericException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.constraints.NotNull;
import java.io.IOException;
import java.nio.file.Paths;

@Service
public class CSVImportService {

    private CSVProductParser csvProductParser;

    public List<ProductDTO> parseCSV(@NotNull String filename) {
        try {
            ClassLoader classLoader = getClass().getClassLoader();
            File file = new File(classLoader.getResource(filename).getFile());
            return csvProductParser.parse(Paths.get(file.getPath()), ProductDTO.class);
        } catch (IOException e) {
           throw new DataGenericException(String.format("Invalid csv file / File not found %s", e.getMessage()));
        }
    }

    @Autowired
    public void setCsvProductParser(CSVProductParser csvProductParser) {
        this.csvProductParser = csvProductParser;
    }

}
