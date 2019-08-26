<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        $(document).ready(function(){

            $('#addMenuForm').bootstrapValidator();

        });
        function selectParentMenu(obj){
            var val=$(obj).val();
            if(val!="R"){//非root根目录

                $('#myModal').modal('show');
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
                                color: "#010A0E" ,
                                onNodeSelected :function(event, node){

                                    //提示只允许添加二级目录
                                    if(node.leveNum!="1"){
                                      alert("请选择一级目录！");
                                      return;
                                    }else{
                                        alert(node.text+":"+node.abcId);
                                        $("#pid").get(0).options[1]=new Option(node.text,node.abcId);
                                        $("#pid").val(node.abcId);
                                        $('#myModal').modal('hide');
                                    }

                                }

                            });


                        }

                    },error:function(){
                        alert("响应失败！");
                    }
                });
            }else{//root根节点
                $("#pid").get(0).options[1]=new Option("选择目录","S");
            }
        }

    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">
<!--内容部分-->
<div class="panel panel-default">

    <!--内容部分-->
    <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#05298F">
            <h2 class="panel-title" style="font-weight:bold; color:#fff;">
               系统信息管理-<span style="font-size:14px;">系统菜单目录创建</span>
            </h2>
        </div>
        <form class="form-inline"  method="post"   id="addMenuForm" action="<%=basePath%>sys/addPtMenu">

            <div class="panel-body">
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle">基本信息</h3>
                    <div class="panel-body">
                        <div class="table-responsive">

                            <div class="formRow">
                                <div class="form-group">
                                    <label  >菜单名称</label>
                                    <input  required type="text" id="menuName" name="menuName"   class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label  >URL</label>
                                    <input  type="text"  required name="menuURL" id="menuURL"       class="form-control"  >
                                </div>

                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label  >上级目录</label>
                                    <select required name="pid"  id="pid" class="form-control" onchange="selectParentMenu(this)">
                                        <option value="R">root根目录</option>
                                        <option value="S">选择目录</option>
                                    </select>

                                </div>
                                <div class="form-group">

                                    <label  >类型</label>
                                    <select required name="menuType" id="menuType" class="form-control">
                                        <option value="0">业务</option>
                                        <option value="1">系统</option>
                                        <option value="2">实施</option>
                                        <option value="4">集成</option>
                                        <option value="5">Demo</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label  >是否明细</label>
                                    <select required name="isItem"  id="isItem" class="form-control">
                                        <option value="0">非明细</option>
                                        <option value="1">明细</option>
                                    </select>
                                    <label  >是否启用</label>
                                    <select required name="flag"  id="flag" class="form-control">
                                        <option value="1">启用</option>
                                        <option value="0">禁用</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                    </div>
                    </div>
                    <div class="formRow" style="text-align: center;">
                        <div class="form-group" >
                            <input type="submit" id="saveBtn"   class="btn btn-primary" value="保存">
                            <input type="button" id="submitBtn"  class="btn btn-primary" value="提交">
                        </div>
                    </div>
                </div>
        </form>
            </div>

    </div>

</div>


<!--遮罩层-->
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    菜单目录
                </h4>
            </div>
            <div class="modal-body" style="height:400px;width:580px;overflow-y: auto">
                <div class="panel-body" style="overflow-y: auto">

                    <div id="menuTreeView"></div>

                </div>

            </div>

        </div>

    </div>
</div>

</body>
</html>

