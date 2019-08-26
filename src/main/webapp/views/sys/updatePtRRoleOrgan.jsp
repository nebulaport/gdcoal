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
            $('#addPtRRoleOrganForm').bootstrapValidator();
            //点击左侧组织机构，加载右侧组织机构
            $("#organ1").change(function(){
                var val=  $(this).val();
                $("#organ2").get(0).options.length=0;

                if(val!=""){
                    //发送ajax请求，查询该机构所有子组织机构信息列表
                    $.ajax({
                        url:"<%=basePath%>sys/selectParentOrgans",
                        type:"post",
                        dataType:"json",
                        data:{parentUUID:val},
                        success:function(res){
                            for(var i=0;i<res.length;i++){
                                var option =new Option(res[i].organName,res[i].organUuid);
                                $("#organ2").append(option);
                            }
                        },
                        error:function(){
                            alert("响应失败！");
                        }

                    });
                }else{
                    $("#organ2").get(0).options.length=0;
                    var option =new Option("--请选择--","");
                    $("#organ2").append(option);
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
            系统信息管理-<span style="font-size:14px;">岗位信息修改</span>
        </h2>
    </div>
    <div class="panel-body">
        <form class="form-inline" action="<%=basePath%>sys/updatePtRRoleOrgan?dutyid=${entity.dutyid}" method="post" id="addPtRRoleOrganForm">
            <div class="formRow">
                <div class="form-group">
                    <label for="name">岗位名称</label>
                    <input type="text" value="${entity.name}" required name="name" data-bv-notempty-message="请输入名称" class="form-control" id="name" placeholder="输入名称">
                </div>




            </div>

            <div class="formRow">

                <div class="form-group">
                <label >组织机构</label>
                <select class="form-control" name="organ1"  id="organ1">
                    <option value="">--请选择--</option>
                    <c:forEach items="${parentRows}" var="i">
                        <option  <c:if test="${i.organUuid==entity.organUuid}">selected</c:if>   value="${i.organUuid}">${i.organName}</option>
                    </c:forEach>

                </select>
                <select class="form-control" name="organ2" id="organ2"    >
                        <option  selected    value="${organName2.organUuid}">${organName2.organName}</option>

                </select>

            </div>
                <div class="form-group">
                    <label  >所属角色</label>
                    <select required  data-bv-notempty-message="请选择角色" class="form-control"   name="roleName">
                        <option value="">--请选择--</option>
                        <c:forEach items="${roleList}" var="r">
                            <option  <c:if test="${r.roleUuid==entity.roleUuid}">selected</c:if> value="${r.roleUuid}">${r.roleName}</option>
                        </c:forEach>

                    </select>
                </div>
            </div>

            <div class="formRow" style="text-align:center;padding-top:50px;">
                <div class="form-group" >
                    <button type="submit" class="btn btn-primary">提交</button>
                    <button type="reset" class="btn btn-primary">取消</button>
                </div>
            </div>
        </form>
    </div>

</div>

</body>
</html>

