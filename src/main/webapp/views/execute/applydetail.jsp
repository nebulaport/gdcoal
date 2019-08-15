<%--
  Created by IntelliJ IDEA.
  User: NebulaPort
  Date: 2019/8/14
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>采购执行管理</title>
    <%@include file="/include.jsp"%>

    <style type="text/css">
        .formRow{padding-left:50px;padding-top:20px;}
        .formRow .form-group label{color:#052963;}
        .panelTitle{color:#052963;font-weight:bold;font-family:"黑体"}
        .form-group{padding-left:10px;}
        .font-table{color:#052963}
    </style>
    <script type="text/javascript">
        function search(){
            $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow=1").submit();
        }
        function firstPage(){
            $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow=1").submit();
        }
        function laterPage(pageNow){
            if(pageNow=="1"){
                $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow=1").submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow="+(pageNow-1)).submit();
            }

        }

        function nextPage(pageNow,totalPage){
            if(pageNow==totalPage){
                $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow="+totalPage).submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow="+(parseInt(pageNow)+1)).submit();
            }

        }
        function lastPage(totalPage){

            $("#searchForm").attr("action","<%=basePath%>execute/selectApplydetailPage?pageNow="+totalPage).submit();
        }

    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">

<!--内容部分  JSTL标签库（c），EL表达式-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            会员中心-<span style="font-size:14px;">采购审批管理</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <form class="form-inline" id="searchForm" action="" method="post">
                <div class="formRow">
                    <div class="form-group">
                        <label  >采购单编号</label>
                        <input type="text" value="${purchapplyid}" name="purchapplyid" class="form-control"   >
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-primary" onclick="search()">查询</button>
                    </div>

                </div>
            </form>
        </div>
        <table class="table table-hover font-table">
            <thead>

            <tr>
                <th>序号</th>
                <th>单据编号</th>
                <th>下达日期</th>
                <th>煤种</th>
                <th>采购数量</th>
                <th>运输方式</th>
                <th>订单状态</th>


            </tr>


            </thead>
            <tbody>
            <c:forEach items="${purchapply}" var="r"   varStatus="st">
                <tr>
                    <td class="text-nowrap" scope="row">${st.count}</td>
                    <td>${r.purchapplyid}</td>
                    <td>${r.operdate}</td>
                    <td>${r.coaltype}</td>
                    <td>${r.qty}</td>
                    <td>${r.yunshuMode}</td>
                    <td>${r.applystate}</td>


                    <td>
                        <a href="<%=basePath%>execute/selectById?purchapplyid=${r.purchapplyid}" class="btn btn-primary">填报</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <nav aria-label="...">
            <ul class="pagination">
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
