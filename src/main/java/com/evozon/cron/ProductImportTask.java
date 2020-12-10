package com.evozon.cron;

import com.evozon.dao.ProductDAO;
import com.evozon.dto.ProductDTO;
import com.evozon.model.Product;
import com.evozon.service.CSVImportService;
import com.evozon.mappers.ProductMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.stream.Collectors;

@Repository
public class ProductImportTask {
    private static final String CSV_FILE = "newProducts.csv";
    private static final Logger LOG = LoggerFactory.getLogger(ProductImportTask.class);

    private CSVImportService csvImportService;
    private ProductDAO productDAO;
    private ProductMapper productMapper;

    @Scheduled(fixedRate = 300000L)
    void storeProducts() {

        List<ProductDTO> csvProducts = csvImportService.parseCSV(CSV_FILE);

        if (csvProducts != null) {
            List<Product> existingProducts = productDAO.getAll();
            List<String> existingProductsNames = existingProducts.stream().map(Product::getName).collect(Collectors.toList());

            List<Product> productsToBeSaved = csvProducts.stream()
                    .filter(productDTO ->  !existingProductsNames.contains(productDTO.getName()))
                    .map(productMapper::map)
                    .collect(Collectors.toList());

            if (productsToBeSaved.isEmpty() && LOG.isInfoEnabled()) {
                LOG.info(String.format("No new products to import in CSV file: %s", CSV_FILE));
                LOG.info("----------------------------------------------------------------------------");
                LOG.info("---------                       APP HAS STARTED                    ---------");
                LOG.info("----------------------------------------------------------------------------");
                LOG.info("http://localhost:8080");
                return;
            }

            productsToBeSaved.forEach(product -> productDAO.addProduct(product));
        }
    }

    @Autowired
    public void setCsvImportService(CSVImportService csvImportService) {
        this.csvImportService = csvImportService;
    }

    @Autowired
    public void setProductDAO(ProductDAO defaultProductDAO) {
        this.productDAO = defaultProductDAO;
    }

    @Autowired
    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }
}
