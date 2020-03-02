package examples;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

@SpringBootApplication
@EnableEurekaServer
public class EurekaServer8082  {

    public static void main(String[] args) {
        SpringApplication.run(EurekaServer8082.class, args);

    }


}
