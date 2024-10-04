/* package com.dm04.dm04.Exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class RestControllerAdvice {


  @ExceptionHandler(Exception.class)
  public ResponseEntity<String> handleException(Exception exception) {
    return new ResponseEntity<>("Check Server ! Your server is not UP", HttpStatus.INTERNAL_SERVER_ERROR);
  }
} */