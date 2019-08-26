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
            $('#addOrganForm').bootstrapValidator();
            //点击左侧组织机构，加载右侧组织机构
            $("#parentOrganSelect").change(function(){
               var val=  $(this).val();
                $("#parentOrganUUID").get(0).options.length=0;

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
                                    $("#parentOrganUUID").append(option);
                                }
                       },
                       error:function(){
                           alert("响应失败！");
                       }

                   });
               }else{
                   $("#parentOrganUUID").get(0).options.length=0;
                   var option =new Option("--请选择--","");
                   $("#parentOrganUUID").append(option);
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
            系统信息管理-<span style="font-size:14px;">组织信息添加</span>
        </h2>
    </div>
    <div class="panel-body">
        <form class="form-inline" action="<%=basePath%>sys/saveOrgan" method="post" id="addOrganForm">
            <div class="formRow">
                <div class="form-group">
                    <label for="organName">组织机构名称</label>
                    <input type="text" required name="organName" data-bv-notempty-message="请输入名称" class="form-control" id="organName" placeholder="输入名称">
                </div>
                <div class="form-group">
                    <label for="organType">类型</label>
                    <input type="text" required name="organType" data-bv-notempty-message="请输入类型" class="form-control" id="organType" placeholder="输入类型">
                </div>
                <div class="form-group">
                    <label >是否可用</label>
                    <select class="form-control" name="inUse" id="inUse">
                        <option value="Y">可用</option>
                        <option value="N">禁用</option>
                    </select>

                </div>



            </div>

            <div class="formRow">
                <div class="form-group" >
                    <label >备注</label>
                    <textarea class="form-control" rows="5" cols="40" name="desc" id="desc"></textarea>

                </div>
                <div class="form-group">
                    <label >上级组织机构</label>
                    <select class="form-control"  id="parentOrganSelect">
                        <option value="">--请选择--</option>
                        <c:forEach items="${parentRows}" var="i">
                            <option value="${i.organUuid}">${i.organName}</option>
                        </c:forEach>

                    </select>
                    <select class="form-control" name="parentOrganUUID" id="parentOrganUUID"    >
                        <option value="">--请选择--</option>
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

