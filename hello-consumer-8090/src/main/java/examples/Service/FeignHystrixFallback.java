package examples.Service;

import org.springframework.stereotype.Component;

@Component
public class FeignHystrixFallback implements HelloService {


    @Override
    public String hello() {
        return "失败";
    }

    @Override
    public String test001() {
        return "失败";
    }
}
