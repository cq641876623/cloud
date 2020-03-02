package examples;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@SpringBootApplication
@EnableZuulProxy
public class Zuul8083 {

    public static void main(String[] args) {
        SpringApplication.run(Zuul8083.class, args);

    }


}
