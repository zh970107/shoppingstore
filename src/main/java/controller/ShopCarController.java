package controller;

import entity.Productinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import serviceImpl.ProductinfoServiceImpl;

import java.util.*;

import static java.lang.String.valueOf;

@RestController
public class ShopCarController {

    @Autowired
    JedisPool jedispool;


    @Autowired
    ProductinfoServiceImpl psi;

    @RequestMapping("addCar")
    public String addcar(@RequestParam String pid,@RequestParam String username){

        //购物车存储结构
        //Redis的hmset存储:hmset是一个map集合,该集合的key存储username(用户名)
        //value存储一个map集合,其中这个map集合的key存储pid(商品唯一标识),value存储的是
        //用户购物车每个商品的数量

        Jedis jedis = jedispool.getResource();//获取jedis对象

        //1.判断用户购物车里面有没有商品,hgetAll通过用户名获取value
        //1.1如果value不为空,说明有商品,直接添加
        //1.2如果value为空,那么需要创建一个map集合

        Map<String, String> map = jedis.hgetAll(username);

        if(map.isEmpty()){
            map = new HashMap<String,String>();
            map.put(pid,"1");
            jedis.hmset(username,map);//存入jedis中
        }else{
            if(map.containsKey(pid)){
                map.put(pid,valueOf(Integer.parseInt(map.get(pid))+1));
                jedis.hmset(username,map);
            }else{
                map.put(pid,"1");
                jedis.hmset(username,map);
            }
        }

        return "";
    }
    
    @RequestMapping("getCar")
    public List<Productinfo> getCar(@RequestParam String username){

        Jedis jedis = jedispool.getResource();//获取jedis对象
        Map<String, String> map = jedis.hgetAll(username);

        List<Productinfo> list = new ArrayList<>();
        if(!map.isEmpty()){
            for (Map.Entry<String,String>entry:map.entrySet()){
                Productinfo pi = psi.selectByPrimaryKey(Integer.parseInt(entry.getKey()));
                pi.setpNum(Integer.parseInt(entry.getValue()));
                list.add(pi);
            }
        }
        return list;
    }


    @RequestMapping("removeItems")
    public void removeItems(@RequestParam String pid,@RequestParam String username){

        Jedis jedis = jedispool.getResource();//获取jedis对象
        Map<String, String> map = jedis.hgetAll(username);
        map.remove(pid);
        jedis.del(username);
        jedis.hmset(username,map);
    }

    @RequestMapping("reduceItemsNum")
    public void reduceItemsNum(@RequestParam String pnum,@RequestParam String username,@RequestParam String pid){

        Jedis jedis = jedispool.getResource();//获取jedis对象
        Map<String, String> map = jedis.hgetAll(username);

        if(Integer.parseInt(pnum)>=1){
            map.remove(pid);
            map.put(pid,pnum);
            jedis.del(username);
            jedis.hmset(username,map);
        }else{
            removeItems(pid,username);
        }
    }

    @RequestMapping("update")
    public void reduce(@RequestParam String pnum,@RequestParam String username,@RequestParam String pid){
        Jedis jedis = jedispool.getResource();//获取jedis对象
        Map<String, String> map = jedis.hgetAll(username);
        map.remove(pid);
        map.put(pid,pnum);
        jedis.del(username);
        jedis.hmset(username,map);
    }
}
