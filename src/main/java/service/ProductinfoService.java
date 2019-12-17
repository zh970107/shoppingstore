package service;

import entity.Productinfo;

import java.util.List;

public interface ProductinfoService {

    List<Productinfo> fuzzyquery(String name);

    List<String> selectAllP_type();

    List<Productinfo> selectAllProductsByP_type(String p_type,Integer page);

    List<Productinfo> selectAllProductsByPtype(String p_type);

    int deleteByPrimaryKey(Integer pId);

    int insert(Productinfo record);

    int insertSelective(Productinfo record);

    Productinfo selectByPrimaryKey(Integer pId);

    int updateByPrimaryKeySelective(Productinfo record);

    int updateByPrimaryKey(Productinfo record);
}
