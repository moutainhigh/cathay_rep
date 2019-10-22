package com.t28.forest;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Hello world!
 *
 */
@SpringBootApplication(scanBasePackages = "com.t28.forest")
@MapperScan(basePackages = "com.t28.forest.*.dao")
public class MainApplication
{
    public static void main( String[] args )
    {
        SpringApplication.run(MainApplication.class, args);
    }
}
