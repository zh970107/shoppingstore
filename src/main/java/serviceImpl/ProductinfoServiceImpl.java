package serviceImpl;

import entity.Productinfo;
import mapper.ProductinfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ProductinfoService;

import java.util.List;

@Service
public class ProductinfoServiceImpl implements ProductinfoService {

    @Autowired
    ProductinfoMapper pim;

    @Override
    public List<Productinfo> fuzzyquery(String name) {
        return pim.fuzzyquery(name);
    }

    @Override
    public List<String> selectAllP_type() {
        return pim.selectAllP_type();
    }

    @Override
    public List<Productinfo> selectAllProductsByP_type(String p_type,Integer page) {
        return pim.selectAllProductsByP_type(p_type,page);
    }

    @Override
    public List<Productinfo> selectAllProductsByPtype(String p_type) {
        return pim.selectAllProductsByPtype(p_type);
    }


    @Override
    public int deleteByPrimaryKey(Integer pId) {
        return pim.deleteByPrimaryKey(pId);
    }

    @Override
    public int insert(Productinfo record) {
        return pim.insert(record);
    }

    @Override
    public int insertSelective(Productinfo record) {
        return pim.insertSelective(record);
    }

    @Override
    public Productinfo selectByPrimaryKey(Integer pId) {
        return pim.selectByPrimaryKey(pId);
    }

    @Override
    public int updateByPrimaryKeySelective(Productinfo record) {
        return pim.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Productinfo record) {
        return pim.updateByPrimaryKey(record);
    }

}
