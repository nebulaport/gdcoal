package com.isoftstone.gdcoal.dao;


import com.isoftstone.gdcoal.entity.TFultbtemplateEntity;
import com.isoftstone.gdcoal.framework.dao.BaseDao;

import java.util.List;
import java.util.Map;


/**
 * Created by issuser on 2019/7/3.
 */
public interface TFultbtemplateDao extends BaseDao<TFultbtemplateEntity> {
     public List<Map<String,Object>> selectPageTFultbtemplate(TFultbtemplateEntity entity);
}
