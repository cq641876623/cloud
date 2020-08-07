package examples.Controller;

import examples.Service.HelloService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;


@Controller
public class HelloController{
    @Resource
    private HelloService helloService;
    @RequestMapping("/ ")
    @ResponseBody
    public String hello() {
        return helloService.hello();
    }

    @RequestMapping("/test001")
    public String hello2(){
        return helloService.test001();
    }
}
