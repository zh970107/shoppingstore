package service;

import entity.Orderinfo;

import java.util.List;

public interface OrderinfoService {

    List<Orderinfo> selectAllUndeliverOrders();

    List<Orderinfo> selectAlldeliverOrders();

    int deleteByPrimaryKey(Integer oId);

    int insert(Orderinfo record);

    int insertSelective(Orderinfo record);

    Orderinfo selectByPrimaryKey(Integer oId);

    int updateByPrimaryKeySelective(Orderinfo record);

    int updateByPrimaryKey(Orderinfo record);
}
