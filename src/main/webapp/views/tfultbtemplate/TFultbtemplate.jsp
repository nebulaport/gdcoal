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
        .formRow .form-group label, .input, .content td{
            color: black;
            font-size: 12px;
            font-weight: bold;
            font-family: "宋体";
        }
        .form-group {
            padding-left: 10px;
        }
    </style>
    <script type="text/javascript">
         function firstPage(){
             $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?pageNow=1").submit();
         }
         function laterPage(pageNow){
             if(pageNow=="1"){
                 $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?pageNow=1").submit();
             }else{
                 $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?pageNow="+(pageNow-1)).submit();
             }
         }
         function nextPage(pageNow,totalPage){
             if(pageNow==totalPage){
                 $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?pageNow="+totalPage).submit();
             }else{
                 $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?pageNow="+(parseInt(pageNow)+1)).submit();
             }
         }
         function lastPage(totalPage){

             $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?pageNow="+totalPage).submit();
         }
         function searchByBillnumber(billnumber){
             $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?BILLNUMBER="+billnumber).submit();
         }
         function searchByStatus(status){
             $("#searchTFultbtemplate").attr("action","<%=basePath%>tFultbtemplateManager/selectPageTFultbtemplate?STATUS="+status).submit();
         }
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
            <h3 class="panel-title panelTitle" style = "background-color: #0166CD;padding-top: 5px;padding-bottom:5px;font-family: '黑体';">采购申请列表</h3>
            <form class="form-inline" method="post"  id="searchTFultbtemplate" action = "">
                <input type="hidden" id="status" name="status">
                <div class="panel panel-default">
                    <div class="formRow" style = "border-bottom:1px solid #8c8c8c;">
                        <div class="form-group" style = "border:1px solid #8c8c8c;background-color:#c4e3f3;text-align: center;width:100px;height:35px;">
                            <label style = "color:#0166CD;font-family: '宋体';padding-top: 10px;" >采购单状态：</label>
                        </div>
                        <div class="form-group">
                            <lable class="input"><a href="javascript:void(0)" onclick="firstPage()"><input type="radio" name="status" id = "all" value = '' ></a>全部</lable>
                                &nbsp; &nbsp; &nbsp; &nbsp;
                            <lable class="input"><a href="javascript:void(0)" onclick="searchByStatus('0')"><input type="radio" name="status" id = "0"  value = '0' ></a>草稿</lable>
                                &nbsp; &nbsp; &nbsp; &nbsp;
                            <lable class="input"><a href="javascript:void(0)" onclick="searchByStatus('1')"><input type="radio" name="status" id = "1"  value = '1' ></a>审核中</lable>
                                &nbsp; &nbsp; &nbsp; &nbsp;
                            <lable class="input"><a href="javascript:void(0)" onclick="searchByStatus('2')"><input type="radio" name="status" id = "2"  value = '2' ></a>已发布</lable>
                                &nbsp; &nbsp; &nbsp; &nbsp;
                            <lable class="input"><a href="javascript:void(0)" onclick="searchByStatus('3')"><input type="radio" name="status" id = "3"  value = '3' ></a>已驳回</lable>
                        </div>
                    </div>
                    <div class="formRow" style = "padding-top: 20px;padding-left: 20px; border-bottom: 1px dashed #C9C9C9;">
                        <div class="form-group">
                            <label>采购单号：</label>
                            <input type="text" id="billnumber" name="billnumber" value="${billnumber}"
                                   class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn btn-primary" onclick="searchByBillnumber(($('#billnumber')).val())">查询</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <table class="table table-hover font-table">
            <thead>

            <tr style = "color:#0166CD;font-size: 12px;font-weight: bold;font-family: '宋体';">
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
                <th>
                    操作
                </th>
            </tr>

            </thead>
            <tbody>
            <c:forEach items="${rows}" var="r"   varStatus="st">
                <tr class = "content">
                    <td class="text-nowrap" scope="row">${st.count}</td>
                    <td>${r.billnumber}</td>
                    <td>${r.createdate}</td>
                    <td>${r.coaltype}</td>
                    <td>${r.qty}</td>
                    <td>${r.jiesuanMode}</td>
                    <td>${r.createuser}</td>
                    <td>${r.status}</td>
                    <td>
                        <c:if test="${r.status=='草稿'}">
                            <a href="<%=basePath%>selectByIdTFultbtemplate?billnumber=${r.billnumber}" class="btn btn-primary">修改</a>
                            <a href="<%=basePath%>deleteTFultbtemplate?billnumber=${r.billnumber}" class="btn btn-primary">删除</a>
                        </c:if>
                        <c:if test="${r.status!='草稿'}">
                            <a href="<%=basePath%>selectTFultbtemplateInfo?billnumber=${r.billnumber}" class="btn btn-primary">查看</a>

                        </c:if>
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

