package examples.Controller;

import examples.Service.HelloService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;


@Controller
public class HelloController{
    @Resource
    private HelloService helloService;

    @Value("${eureka.instance.metadata-map.zone}")
    public String zone;

    @RequestMapping("/he")
    @ResponseBody
    public String hello() {
        return helloService.hello()+" "+zone;
    }

    @RequestMapping("/test001")
    public String hello2(){
        return helloService.test001();
    }
}
