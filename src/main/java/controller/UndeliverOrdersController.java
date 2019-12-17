package controller;

import entity.Orderinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import serviceImpl.OrderinfoServiceImpl;
import serviceImpl.ProductinfoServiceImpl;

import java.util.List;

@RestController
public class UndeliverOrdersController {

    @Autowired
    OrderinfoServiceImpl oisi;

    @Autowired
    ProductinfoServiceImpl pisi;

    //查询所有未发货
    @RequestMapping("unshipped")
    public List<Orderinfo> unshipped(){
        return oisi.selectAllUndeliverOrders();
    }

    //查询所有已发货
    @RequestMapping("shipped")
    public List<Orderinfo> shipped(){
        return oisi.selectAlldeliverOrders();
    }

    //发货
    @RequestMapping("shipments")
    public int shipments(@RequestParam Integer oid){
        Orderinfo oi = new Orderinfo();
        oi.setStatus(1);
        oi.setoId(oid);
        return oisi.updateByPrimaryKeySelective(oi);
    }

    //撤销发货&退款
    @RequestMapping("revocation")
    public int revocation(@RequestParam Integer oid){
        Orderinfo oi = new Orderinfo();
        oi.setStatus(0);
        oi.setoId(oid);
        return oisi.updateByPrimaryKeySelective(oi);
    }
}
