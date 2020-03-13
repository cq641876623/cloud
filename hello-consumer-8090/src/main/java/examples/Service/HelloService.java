package examples.Service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;


@FeignClient(name = "hello-provide",fallback = FeignHystrixFallback.class)
public interface HelloService {
    @GetMapping("/hello")
    String hello();

    @GetMapping("/test001")
    String test001();
}
