package controller;

import entity.Productinfo;
import entity.WebInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import serviceImpl.ProductinfoServiceImpl;
import serviceImpl.WebInfoServiceImpl;

import java.util.List;

@RestController
public class NavigatorAndShowProductsController {

    @Autowired
    ProductinfoServiceImpl psi;

    @Autowired
    WebInfoServiceImpl wsi;

    @RequestMapping("selectAllP_type")
    public List<String> selectAllP_type(){
        return psi.selectAllP_type();
    }

    @RequestMapping("selectAllProductsByP_type")
    public List<Productinfo> selectAllProductsByP_type(@RequestParam String p_type, @RequestParam Integer page){
        return psi.selectAllProductsByP_type(p_type,page);
    }

    @RequestMapping("selectAllProductsByPtype")
    public int selectAllProductsByPtype(@RequestParam String p_type){
        List<Productinfo> list = psi.selectAllProductsByPtype(p_type);
        int size = list.size();
        return size;
    }

    @RequestMapping("selectAllProductsPtype")
    public List<Productinfo> selectAllProductsPtype(@RequestParam String p_type){
        return psi.selectAllProductsByPtype(p_type);
    }

    //获取单个商品信息
    @RequestMapping("getproductinfo")
    public Productinfo getproductinfo(@RequestParam Integer pId){
        return psi.selectByPrimaryKey(pId);
    }





    //获取
    @RequestMapping("getWebData")
    public List<WebInfo> selectAll(){
        return wsi.selectAll();
    }

    //将商品状态改为已上架
    @RequestMapping("upanddown")
    public int up(@RequestParam Integer pid,@RequestParam Integer status){
        if(status==0){
            Productinfo pi = new Productinfo();
            pi.setStatus(1);
            pi.setpId(pid);
            return psi.updateByPrimaryKeySelective(pi);
        }else{
            Productinfo pi = new Productinfo();
            pi.setStatus(0);
            pi.setpId(pid);
            return psi.updateByPrimaryKeySelective(pi);
        }
    }
}
