package com.examples;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class EurekaServer8081  {

    public static void main(String[] args) {
        SpringApplication.run(EurekaServer8081.class, args);

    }


}
