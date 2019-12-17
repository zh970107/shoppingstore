package controller;

import entity.Admininfo;
import entity.Userinfo;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import serviceImpl.AdmininfoServiceImpl;
import serviceImpl.UserServiceImpl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
public class LoginAndRegisterController {

    @Autowired
    UserServiceImpl usi;

    @Autowired
    AdmininfoServiceImpl aisi;


    @RequestMapping("login")
    public String login(@RequestParam String username, @RequestParam String password, @RequestParam String flag, HttpServletRequest request, HttpServletResponse resp){
        Userinfo ui = usi.selectByUsername(username);
        if(ui == null){
            return "none";
        }else{
            if(DigestUtils.md5Hex(password.getBytes()).equals(ui.getPassword())){
                Cookie cookie = new Cookie("username",username);
                Cookie cookie1 = new Cookie("password",password);
                cookie.setMaxAge(60*60*24*7);
                cookie1.setMaxAge(60*60*24*7);

                if(flag.equals("yes")){
                    Cookie cookie3 = new Cookie("flag","no");
                    cookie3.setMaxAge(60*60*24*7);
                    resp.addCookie(cookie3);
                }else{
                    Cookie cookie4 = new Cookie("flag","yes");
                    cookie4.setMaxAge(60*60*24*7);
                    resp.addCookie(cookie4);
                }
                resp.addCookie(cookie);
                resp.addCookie(cookie1);
                return "yes";
            }else{
                return "no";
            }
        }
    }

    @RequestMapping("register")
    public String register(@RequestParam String username,@RequestParam String password,@RequestParam String email){
        Userinfo userinfo = usi.selectByUsername(username);
        if(userinfo!=null){
            return "existed";
        }else{
            Userinfo ui = new Userinfo();
            ui.setUsername(username);
            ui.setPassword(DigestUtils.md5Hex(password.getBytes()));
            ui.setEmail(email);
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            ui.setRegisterTime(sdf.format(date));
            int line = usi.insert(ui);
            if(line>0){
                return "yes";
            }else{
                return "no";
            }
        }
    }

    @RequestMapping("updatePWD")
    public String reset(@RequestParam String username,@RequestParam String password,@RequestParam String code,@RequestParam String randNum){
        if(username!=""&&password!=""&&code!=""&&randNum!=""){
            if(!code.equals(randNum)){
                return "inconformity";
            }else{
                Userinfo userinfo = usi.selectByUsername(username);
                String password2 = userinfo.getPassword();
                if(DigestUtils.md5Hex(password.getBytes()).equals(password2)){
                    return "same";
                }else{
                    int id = userinfo.getuId();
                    Userinfo ui = new Userinfo();
                    ui.setuId(id);
                    ui.setPassword(DigestUtils.md5Hex(password.getBytes()));
                    int i = usi.updateByPrimaryKeySelective(ui);
                    if(i>0){
                        return "success";
                    }else{
                        return "mismatching";
                    }
                }
            }
        }else{
            return "empty";
        }
    }



    @RequestMapping("adminlogin")
    public String adminlogin(@RequestParam String username,@RequestParam String password){
        Admininfo admininfo = aisi.selectByAdminname(username);
        if(admininfo==null){
            return "empty";
        }else{
            if(admininfo.getAdPassword().equals(DigestUtils.md5Hex(password.getBytes()))){
                return "yes";
            }else{
                return "no";
            }
        }
    }
}
