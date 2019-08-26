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
        $(document).ready(function() {
            $('#addOrganForm').bootstrapValidator();
        });
    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">
<!--内容部分-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#052963">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            系统信息管理-<span style="font-size:14px;">组织信息修改</span>
        </h2>
    </div>
    <div class="panel-body">
        <form class="form-inline" action="<%=basePath%>sys/updateOrgan?organId=${row.organUuid}" method="post" id="addOrganForm">
            <div class="formRow">
                <div class="form-group">
                    <label for="organName">组织机构名称</label>
                    <input type="text" required value="${row.organName}" name="organName" data-bv-notempty-message="请输入名称" class="form-control" id="organName" placeholder="输入名称">
                </div>
                <div class="form-group">
                    <label for="organType">类型</label>
                    <input type="text" required value="${row.organType}" name="organType" data-bv-notempty-message="请输入类型" class="form-control" id="organType" placeholder="输入类型">
                </div>
                <div class="form-group">
                    <label >是否可用</label>
                    <select class="form-control" name="inUse" id="inUse">
                        <c:if test="${row.inUse=='Y'}">
                            <option value="Y" selected>可用</option>
                            <option value="N">禁用</option>
                        </c:if>
                        <c:if test="${row.inUse=='N'}">
                            <option value="Y" >可用</option>
                            <option value="N" selected>禁用</option>
                        </c:if>

                    </select>

                </div>


            </div>
            <div class="formRow">
                <div class="form-group">
                    <label >备注</label>
                    <textarea class="form-control"  rows="5" cols="40" name="desc" id="desc">${row.description}</textarea>

                </div>
            </div>

            <div class="formRow">
                <div class="form-group" style="text-align: center;">
                    <button type="submit" class="btn btn-primary">提交</button>
                    <button type="reset" class="btn btn-primary">取消</button>
                </div>
            </div>
        </form>
    </div>

</div>

</body>
</html>

