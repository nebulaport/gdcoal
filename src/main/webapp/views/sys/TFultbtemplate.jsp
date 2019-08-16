<%--
  Created by IntelliJ IDEA.
  User: tupingping
  Date: 2019/8/15
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>采购申请查询</title>
    <%@include file="/include.jsp" %>
    <style type="text/css">
        .formRow .form-group label, .input{
            color: black;
            font-size: 12px;
            font-weight: bold;
            font-family: "宋体";

        }
        .formRow {
            padding-left: 20px;

            border-bottom: 1px dashed #C9C9C9;
        }
        .form-group {
            padding-left: 10px;
        }
    </style>
    <script type="text/javascript">

    </script>
</head>
<body>
<!--内容部分-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            采购申请管理-<span style="font-size:15px;">采购申请查询</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <h3 class="panel-title panelTitle" style = "background-color: #0166CD;padding-top: 5px;">采购申请列表</h3>
            <form class="form-inline" method="post" enctype="multipart/form-data" id="selectTFultbtemplate">
                <input type="hidden" id="permitstatus" name="permitstatus">
                <div class="panel panel-default">
                    <div class="formRow" style = "border-bottom:1px solid #8c8c8c;">
                        <div class="form-group" style = "border:1px solid #8c8c8c;background-color:#c4e3f3;text-align: center;width:100px;height:35px;">
                            <label style = "color:#9acfea;font-family: '宋体';padding-top: 10px;" >采购单状态：</label>
                        </div>
                        <div class="form-group">
                            <lable class="input">
                                <input type="radio" name="all" value="${code}">全部
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <input type="radio" name="draft" value="${code}">草稿
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <input type="radio" name="viewing" value="${code}">审核中
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <input type="radio" name="published" value="${code}">已发布
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <input type="radio" name="reject" value="${code}">已驳回
                            </lable>
                        </div>
                    </div>
                    <div class="formRow" style = "padding-top: 20px;">
                        <div class="form-group">
                            <label>采购单号：</label>
                            <input type="text" id="tid" name="tid" value="${code}"
                                   class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn btn-primary" onclick="search()">查询</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <table class="table table-hover font-table">
            <thead>

            <tr style = "color:#9acfea;font-size: 12px;font-weight: bold;font-family: '宋体';">
                <th>序号</th>
                <th>
                    单据编号
                </th>
                <th>
                    创建日期
                </th>
                <th>
                    煤种
                </th>
                <th>
                    数量（万吨）
                </th>
                <th>
                    结算方式
                </th>
                <th>
                    发起人
                </th>
                <th>
                    状态
                </th>
                <th>操作</th>
            </tr>

            </thead>
            <tbody>
            <c:forEach items="${rows}" var="r"   varStatus="st">
                <tr>
                    <td class="text-nowrap" scope="row">${st.count}</td>
                    <td>${r.eorganName}</td>
                    <td>${r.eorganType}</td>
                    <td>${r.einUse}</td>
                    <td>${r.dorganName}</td>
                    <td>${r.dorganType}</td>
                    <td>${r.dinUse}</td>
                    <td>${r.description}</td>
                    <td>
                        <a href="<%=basePath%>sys/deleteOrgan?organId=${r.eorganUuid}" class="btn btn-primary">删除</a>
                        <a href="<%=basePath%>sys/selectById?organId=${r.eorganUuid}" class="btn btn-primary">修改</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <nav aria-label="...">
            <ul class="pagination" style = "color:#9acfea; font-size: 12px;font-weight: bold; font-family: '宋体';">
                <li ><a href="javascript:void(0)" onclick="firstPage()" aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
                <li ><a href="javascript:void(0)" onclick="laterPage('${entity.pageNow}')" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
                <li ><a href="javascript:void(0)" onclick="nextPage('${entity.pageNow}','${entity.totalPage}')" aria-label="Previous"><span aria-hidden="true">下一页</span></a></li>
                <li ><a href="javascript:void(0)" onclick="lastPage('${entity.totalPage}')" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">共${entity.totalPage}页</span></a></li>
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">第${entity.pageNow}页</span></a></li>
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">总记录数：${entity.total}</span></a></li>

            </ul>
        </nav>
    </div>
</div>
</body>
</html>

