package bt.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;

@Controller
public class index {

    @GetMapping("/bt")
    public String index()
    {
        System.out.println("访问了bt 页面哟");
        return "/index.html";
    }
}
