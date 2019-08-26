package com.isoftstone.gdcoal.controller;


import com.isoftstone.gdcoal.service.PtMenuService;
import com.isoftstone.gdcoal.utils.Node;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by issuser on 2019/8/22.
 */
@Controller
public class PtMenuController {
    @Autowired
    private PtMenuService ptMenuService;
    @RequestMapping("/sys/loadMenuMangerPage")
    public String loadMenuMangerPage(){
        return "/views/sys/ptMenuManager.jsp";
    }
    @RequestMapping("/sys/selectPtMenus")
    @ResponseBody
    public List<Node> selectPtMenus(){
        List<HashMap<String,Object>> list=ptMenuService.selectAllMenus(null);//查询所有级别菜单列表
        List<Node> nodes=new ArrayList<Node>();
        if(list!=null&&list.size()>0){
            for(int i=0;i<list.size();i++){
                HashMap<String,Object> m=list.get(i);
                Node node=new Node(m.get("id")!=null?m.get("id").toString():"",
                        m.get("parentId")!=null?m.get("parentId").toString():"".toString(),
                        m.get("dirName")!=null?m.get("dirName").toString():"".toString(),"",
                        m.get("resUrl")!=null?m.get("resUrl").toString():"");
                nodes.add(node);

            }
        }
        Node n=new Node();

       return  n.createTreeRoots(nodes);

    }

}
