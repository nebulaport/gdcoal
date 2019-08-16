<%--
  Created by IntelliJ IDEA.
  User: NebulaPort
  Date: 2019/8/16
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>采购审批管理</title>
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
            $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow=1").submit();
        }
        function firstPage(){
            $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow=1").submit();
        }
        function laterPage(pageNow){
            if(pageNow=="1"){
                $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow=1").submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow="+(pageNow-1)).submit();
            }

        }

        function nextPage(pageNow,totalPage){
            if(pageNow==totalPage){
                $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow="+totalPage).submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow="+(parseInt(pageNow)+1)).submit();
            }

        }
        function lastPage(totalPage){

            $("#searchForm").attr("action","<%=basePath%>check/toDo?pageNow="+totalPage).submit();
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
                        <label for="state">状态</label><select required name="state" id="state"
                                                             class="form-control">

                        <option selected value="">全部</option>
                        <option value="toCheck">待审批</option>
                        <option value="toFill">待填报</option>
                    </select>
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
                <th>创建日期</th>
                <th>煤种</th>
                <th>数量（万吨）</th>
                <th>结算方式</th>
                <th>发起人</th>
                <th>申请状态</th>
                <th>操作</th>

            </tr>


            </thead>
            <tbody>
            <c:forEach items="${purchapplyList}" var="r"   varStatus="st">
                <tr>
                    <td class="text-nowrap" scope="row">${st.count}</td>
                    <td>${r.purchapplyid}</td>
                    <td>${r.createdate}</td>
                    <td>${r.coaltype}</td>
                    <td>${r.qty}</td>
                    <td>${r.jiesuanMode}</td>
                    <td>${r.createuser}</td>
                    <td>${r.applystate}</td>

                    <td>
                        <a href="<%=basePath%>check/selectById?purchapplyid=${r.purchapplyid}" class="btn btn-primary">审批</a>
                        <a href="<%=basePath%>execute/selectById?purchapplyid=${r.purchapplyid}" class="btn btn-primary">填报</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <nav aria-label="...">
            <ul class="pagination">
                <li ><a href="javascript:void(0)" onclick="firstPage()" aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
                <li ><a href="javascript:void(0)" onclick="laterPage('${purchapply.pageNow}')" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
                <li ><a href="javascript:void(0)" onclick="nextPage('${purchapply.pageNow}','${purchapply.totalPage}')" aria-label="Previous"><span aria-hidden="true">下一页</span></a></li>
                <li ><a href="javascript:void(0)" onclick="lastPage('${purchapply.totalPage}')" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">共${purchapply.totalPage}页</span></a></li>
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">第${purchapply.pageNow}页</span></a></li>
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">总记录数：${purchapply.total}</span></a></li>

            </ul>
        </nav>






    </div>



</div>


</body>
</html>

