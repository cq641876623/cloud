package examples.Controller;

import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class HelloController {
    @RequestMapping("/index")
    @ResponseBody
    public String hello(){
        return "hello8085";

    }

    @RequestMapping("/test001")
    public String hello2(){
        return "index";

    }

}
