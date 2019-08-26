package com.isoftstone.gdcoal.service;

import com.isoftstone.gdcoal.dao.PtOrganDao;
import com.isoftstone.gdcoal.entity.PtOrganEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

    //查询总记录数(含上级组织机构)
    public int selectTotal(PtOrganEntity entity) {
        return ptOrganDao.selectTotal(entity);
    }

    public List<Map<String,Object>> selectOrganPage(PtOrganEntity entity){

        return ptOrganDao.selectOrgansPage(entity);
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
    public List<PtOrganEntity> selectALL(StringBuffer whereSql) {
        return ptOrganDao.selectALL(whereSql);
    }
    //查询所有上级机构列表
    public List<PtOrganEntity> selectParentOrgans(){
        StringBuffer sql=new StringBuffer(" and  pt_organ.ORGAN_UUID in (select DISTINCT e.PARENT_UUID from pt_organ e  where e.PARENT_UUID is not null)");
        return ptOrganDao.selectALL(sql);
    }
    private List<PtOrganEntity> rows=new ArrayList<PtOrganEntity>();
    //递归查找所有子组织机构(用户删除)
    public void selectChildrenOrgans(String organId){
        List<PtOrganEntity> items=ptOrganDao.selectALL(new StringBuffer(" and parent_UUID='"+organId+"'"));
        if(items!=null&&items.size()>0){
            rows.addAll(items);
            for(int i=0;i<items.size();i++){
                selectChildrenOrgans(items.get(i).getOrganUuid());//递归检索
            }
        }

    }
    public List<PtOrganEntity> getChildrenOrgans(){
        return this.rows;
    }



}
