<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/include.jsp"%>
    <style type="text/css">
        .formRow{padding-left:50px;padding-top:20px;}
        .formRow .form-group label{color:#052963;}
        .panelTitle{color:#052963;font-weight:bold;font-family:"黑体"}
        .form-group{padding-left:10px;height:80px;}
        .font-table{color:#052963}
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $.ajax({
             url:"<%=basePath%>sys/selectPtMenus",
             type:"post",
             dataType:"json",
             success:function(res){
                 if(res){
                     $('#menuTreeView').treeview({
                         data: res,         // 数据源
                         //showCheckbox: true,   //是否显示复选框
                         highlightSelected: true,    //是否高亮选中
                         multiSelect: false,    //多选
                         levels : 2,
                         //enableLinks : true,//必须在节点属性给出href属性
                         color: "#010A0E",
                         onNodeChecked : function (event,node) {
                             var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                             if (selectNodes) { //子节点不为空，则选中所有子节点
                                 $('#menuTreeView').treeview('checkNode', [selectNodes, { silent: true }]);
                             }
                         },
                         onNodeUnchecked : function(event, node) { //取消选中节点
                             var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                             if (selectNodes) { //子节点不为空，则取消选中所有子节点
                                 $('#menuTreeView').treeview('uncheckNode', [selectNodes, { silent: true }]);
                             }
                         }
                     });


                 }

             },error:function(){
             alert("响应失败！");
             }
             });
        });
    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">
<!--内容部分-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#052963">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            系统信息管理-<span style="font-size:14px;">系统目录信息</span>
        </h2>
    </div>
    <div class="panel-body">
     <a  href="<%=basePath%>sys/loadAddPtMenuPage"    class="btn btn-primary"   >添加目录</a>
     <div id="menuTreeView"></div>
    </div>

</div>

</body>
</html>

