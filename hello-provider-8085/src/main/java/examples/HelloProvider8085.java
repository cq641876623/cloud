package examples;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class HelloProvider8085 {

    public static void main(String[] args) {
        SpringApplication.run(HelloProvider8085.class, args);

    }

}
