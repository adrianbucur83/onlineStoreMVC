package com.evozon.exception;

public class DataGenericException extends RuntimeException{
    public DataGenericException(String message) {
        super(message);
    }

    public DataGenericException(String message, Throwable cause) {
        super(message, cause);
    }
}
