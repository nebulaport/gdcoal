package com.isoftstone.gdcoal.utils;

import com.isoftstone.gdcoal.service.PtMenuService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * 树形节点模型
 * @author chenht
 *
 */
public class Node {
    public Node() {
        this.nodes = new ArrayList<Node>();
    }
    public Node(String nodeId,String pId) {
        this.nodeId = nodeId;
        this.pid = pId;
        if( pId.equals("0") || pId.equals("root")){
            this.nodes=new ArrayList<Node>();

        }
    }
    /**
     * 生成一个节点
     * @param nodeId
     * @param pId
     * @param text
     * @param icon
     * @param href
     */
    public Node(String nodeId, String pId, String text, String icon, String href) {
        super();
        this.nodeId = nodeId;
        this.pid = pId;
        this.text = text;
        this.icon = icon;
        this.href = href;
       if( pId.equals("0") || pId.equals("root")){
            this.nodes=new ArrayList<Node>();

        }



    }

    private String nodeId;    //树的节点Id，区别于数据库中保存的数据Id。
    private String pid;
    private String text;   //节点名称
    private String icon;
    private String href;   //点击节点触发的链接
    private List<Node> nodes;    //子节点，可以用递归的方法读取

    public String getNodeId() {
        return nodeId;
    }
    public void setNodeId(String nodeId) {
        this.nodeId = nodeId;
    }

    public String getPid() {
        return pid;
    }
    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getText() {
        return text;
    }
    public void setText(String text) {
        this.text = text;
    }

    public String getIcon() {
        return icon;
    }
    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getHref() {
        return href;
    }
    public void setHref(String href) {
        this.href = href;
    }

    public List<Node> getNodes() {
        return nodes;
    }
    public void setNodes(List<Node> nodes) {
        this.nodes = nodes;
    }

    /**
     * 生成一颗多叉树，根节点为root
     * @param Nodes 生成多叉树的节点集合
     * @return root
     */
    public Node createTreeRoot(List<Node> Nodes) {
        if (Nodes == null || Nodes.size() < 0) {
            return null;
        }
        Node root = new Node("root","0");//根节点自定义，但是要和pid对应好
        // 将所有节点添加到多叉树中
        for (Node node : Nodes) {
            if (node.getPid().equals("0") || node.getPid().equals("root")) {//根节点自定义，但是要和pid对应好
                // 向根添加一个节点

                root.getNodes().add(node);
            } else {
                addChild(root, node);
            }
        }
        return root;
    }

    public List<Node> createTreeRoots(List<Node> Nodes) {

        if (Nodes == null || Nodes.size() < 0) {
            return null;
        }
        Node root = new Node("root","0");//根节点自定义，但是要和pid对应好
        // 将所有节点添加到多叉树中
        for (Node node : Nodes) {
            if (node.getPid().equals("0") || node.getPid().equals("root")) {//根节点自定义，但是要和pid对应好
                // 向根添加一个节点

                root.getNodes().add(node);
            } else {
                addChild(root, node);
            }
        }
        return root.getNodes();
    }

    /**
     * 向指定多叉树节点添加子节点
     * @param Node 多叉树节点
     * @param child 节点
     */
    public void addChild(Node Node, Node child) {
        for (Node item : Node.getNodes()) {
            if (item.getNodeId().equals(child.getPid())) {
                // 找到对应的父亲
                item.getNodes().add(child);
                break;
            } else {
                if (item.getNodes() != null && item.getNodes().size() > 0) {
                    addChild(item, child);
                }
            }
        }
    }

    /**
     * 遍历多叉树
     * @param Node 多叉树节点
     * @return
     */
    public String iteratorTree(Node Node) {
        StringBuilder buffer = new StringBuilder();
        buffer.append("\n");
        if (Node != null) {
            for (Node index : Node.getNodes()) {
                buffer.append(index.getNodeId() + ",");
                if (index.getNodes() != null && index.getNodes().size() > 0) {
                    buffer.append(iteratorTree(index));
                }
            }
        }
        buffer.append("\n");
        return buffer.toString();
    }

    public static void main(String[] args) {
      /*  List<Node> list = new ArrayList<Node>();
        //一级菜单
        Node anode_1=new Node("1", "0", "系统信息管理","","JavaScript:void(0)");

        //二级菜单
        Node achildNode_1=new Node("5", "1", "组织机构管理","","#");
        Node achildNode_2=new Node("6", "1", "部门信息管理","","JavaScript:void(0)");
        Node achildNode_3=new Node("7", "1", "岗位信息管理","","JavaScript:void(0)");
        Node achildNode_4=new Node("8", "1", "用户信息管理","","JavaScript:void(0)");
        Node achildNode_5=new Node("9", "1", "角色信息管理","","JavaScript:void(0)");
        Node achildNode_6=new Node("10", "1", "资源信息管理","","JavaScript:void(0)");
        Node achildNode_7=new Node("11", "1", "菜单信息管理","","JavaScript:void(0)");

        List<Node> children_1=new ArrayList<Node>();
        children_1.add(achildNode_1);
        children_1.add(achildNode_2);
        children_1.add(achildNode_3);
        children_1.add(achildNode_4);
        children_1.add(achildNode_5);
        children_1.add(achildNode_6);
        children_1.add(achildNode_7);

        anode_1.setNodes(children_1);
        list.add(anode_1);


       System.out.println( JsonUtils.listToJson(list));*/

        /*//一级菜单
        Node anode_1=new Node("1", "0", "系统信息管理","","JavaScript:void(0)");

        //二级菜单
        Node achildNode_1=new Node("5", "1", "组织机构管理","","#");
        Node achildNode_2=new Node("6", "1", "部门信息管理","","JavaScript:void(0)");
        Node achildNode_3=new Node("7", "1", "岗位信息管理","","JavaScript:void(0)");
        Node achildNode_4=new Node("8", "1", "用户信息管理","","JavaScript:void(0)");
        Node achildNode_5=new Node("9", "1", "角色信息管理","","JavaScript:void(0)");
        Node achildNode_6=new Node("10", "1", "资源信息管理","","JavaScript:void(0)");
        Node achildNode_7=new Node("11", "1", "菜单信息管理","","JavaScript:void(0)");

        List<Node> list = new ArrayList<Node>();
        list.add(anode_1);
        list.add(achildNode_1);
        list.add(achildNode_2);
        list.add(achildNode_3);
        list.add(achildNode_4);
        list.add(achildNode_5);
        list.add(achildNode_6);
        list.add(achildNode_7);

        Node d=new Node();
      System.out.println(  JsonUtils.objectToJson(d.createTreeRoots(list)));*/
        //加载spring配置文件获取bean
        ClassPathXmlApplicationContext app=new ClassPathXmlApplicationContext("spring/spring_config.xml");
        PtMenuService service= (PtMenuService) app.getBean("ptMenuService");
        List<HashMap<String,Object>> list=service.selectUserMenuDir("1");
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
        System.out.println(JsonUtils.listToJson(n.createTreeRoots(nodes)));



    }


}