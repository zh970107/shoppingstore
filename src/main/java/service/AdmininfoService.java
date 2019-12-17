package service;

import entity.Admininfo;

public interface AdmininfoService {
    int deleteByPrimaryKey(Integer adId);

    Admininfo selectByAdminname(String adName);

    int insert(Admininfo record);

    int insertSelective(Admininfo record);

    Admininfo selectByPrimaryKey(Integer adId);

    int updateByPrimaryKeySelective(Admininfo record);

    int updateByPrimaryKey(Admininfo record);
}
