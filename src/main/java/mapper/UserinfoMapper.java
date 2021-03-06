package mapper;

import entity.Userinfo;

public interface UserinfoMapper {


    Userinfo selectByUsername(String username);

    String selectEmailByusername(String username);

    int selectUidByusername(String username);

    int deleteByPrimaryKey(Integer uId);

    int insert(Userinfo record);

    int insertSelective(Userinfo record);

    Userinfo selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(Userinfo record);

    int updateByPrimaryKey(Userinfo record);
}