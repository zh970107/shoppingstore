package controller;


import entity.Productinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import serviceImpl.ProductinfoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
public class FuzzyQueryController {

    @Autowired
    ProductinfoServiceImpl pisi;

    @RequestMapping("fuzzyquery")
    public void fuzzyquery(HttpServletResponse resp,HttpServletRequest req, @RequestParam String name){
        try {
            List<Productinfo> list = pisi.fuzzyquery(name);
            req.setAttribute("list",list);
            req.getRequestDispatcher("resource/shop/search.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
