package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.PtOrganDao;
import com.isoftstone.gdcoal.entity.PtOrganEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by issuser on 2019/8/9.
 */
@Service
public class PtOrganService {
    @Autowired
    private PtOrganDao ptOrganDao;
    /**
     * 新增组织机构信息
     */
    public int saveOrgan(PtOrganEntity entity){
        return ptOrganDao.saveEntity(entity);
    }

    //查询总记录数
    public int selectTotal(PtOrganEntity entity) {
        return ptOrganDao.selectTotal(entity);
    }

    public List<PtOrganEntity> selectOrganPage(PtOrganEntity entity){
        return ptOrganDao.selectForPage(entity);
    }

    public int deleteOrgan(String id){
        return ptOrganDao.deleteEntity(id);
    }

    public PtOrganEntity selectById(String id){
        return ptOrganDao.selectById(id);
    }
    public int updateOrgan(PtOrganEntity entity){
        return ptOrganDao.updateEntity(entity);
    }


}
