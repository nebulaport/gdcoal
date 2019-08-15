package com.isoftstone.gdcoal.controller;

import com.isoftstone.gdcoal.entity.TFultbtemplateEntity;
import com.isoftstone.gdcoal.service.TFultbtemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.sql.Date;
import java.util.List;

/**
 * Created by tupingping on 2019/8/13.
 */
@Controller
public class TFultbtemplateController {
    @Autowired
    private TFultbtemplateService tFultbtemplateService;
    @RequestMapping("/tFultbtemplateManager/loadCreateTFultbtemplate")
    public String loadAddTFultbtemplate() {
        return "/views/sys/addTFultbtemplate.jsp";
    }

    //保存采购申请
//    @RequestMapping("/tFultbtemplateManager/addTFultbtemplateInfo")
//    public String addTFultbtemplateInfo(){
//         return
//    }

}
