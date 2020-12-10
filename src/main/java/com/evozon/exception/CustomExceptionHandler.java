package com.evozon.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CustomExceptionHandler {
    private static final Logger LOG = LoggerFactory.getLogger(CustomExceptionHandler.class);

    @ExceptionHandler(DataGenericException.class)
    private ModelAndView handleDataException(DataGenericException exception){
        LOG.info(exception.getMessage());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("error");
        modelAndView.addObject("message", exception.getMessage());

        return modelAndView;
    }
}
