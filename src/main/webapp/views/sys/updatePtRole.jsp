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
            $('#updateRoleForm').bootstrapValidator();
            //点击提交按钮，判重
            $("#updateBtn").click(function(){
                if( $("#updateRoleForm").data('bootstrapValidator').isValid()){
                    //判重
                    var roleName=$("#roleName").val();
                    $.ajax({
                        url:"<%=basePath%>sys/updateRoleValidate",
                        data:{roleName:roleName},
                        dataType:"json",
                        type:"post",
                        success:function(res){
                            if(res){
                                $("#updateRoleForm")[0].submit();
                            }else{
                                alert("角色已经存在！");
                            }
                        },error:function(){
                            alert("响应失败！");
                        }
                    });


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
            系统信息管理-<span style="font-size:14px;">角色信息修改</span>
        </h2>
    </div>
    <div class="panel-body">
        <form class="form-inline" action="<%=basePath%>sys/updateRole?roleId=${entity.roleUuid}" method="post" id="updateRoleForm">
            <div class="formRow">
                <div class="form-group">
                    <label for="roleName">角色名称</label>
                    <input type="text"  value="${entity.roleName}" id="roleName" required name="roleName" data-bv-notempty-message="请输入名称" class="form-control" id="roleName" placeholder="输入名称">
                </div>
            </div>

            <div class="formRow" style="text-align:center;padding-top:50px;">
                <div class="form-group" >
                    <button type="button" id="updateBtn" class="btn btn-primary">提交</button>
                    <button type="reset" class="btn btn-primary">取消</button>
                </div>
            </div>
        </form>
    </div>

</div>

</body>
</html>

