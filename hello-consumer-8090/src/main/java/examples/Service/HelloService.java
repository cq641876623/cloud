package examples.Service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "hello-provide")
public interface HelloService {
    @GetMapping("/hello")
    String hello();
}
