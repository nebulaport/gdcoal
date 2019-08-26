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
        .form-group{padding-left:10px;}
        .font-table{color:#052963}
    </style>
    <script type="text/javascript">
        function search(){
            $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow=1").submit();
        }
        function firstPage(){
            $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow=1").submit();
        }
        function laterPage(pageNow){
            if(pageNow=="1"){
                $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow=1").submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow="+(pageNow-1)).submit();
            }

        }

        function nextPage(pageNow,totalPage){
            if(pageNow==totalPage){
                $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow="+totalPage).submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow="+(parseInt(pageNow)+1)).submit();
            }

        }
        function lastPage(totalPage){

            $("#searchForm").attr("action","<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow="+totalPage).submit();
        }

        function showBondCtractSupportInfo(status,obj){

            if(status=="已保存"){//保存状态
              window.location=$(obj).attr("url");
            }else{
                alert("长协交易合同已提交无法补录！");
            }
        }

    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">

<!--内容部分  JSTL标签库（c），EL表达式-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            系统信息管理-<span style="font-size:14px;">长协交易补充信息</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <form class="form-inline" id="searchForm" action="<%=basePath%>bondCtractManager/selectBondCtractMessage?pageNow=1" method="post">
                <div class="formRow">
                    <div class="form-group">
                        <label  >供应商名称</label>
                        <input type="text"  value="${fultbSupplierName}"  name="fultbSupplierName" class="form-control"   >
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
                <th>
                    单据编号
                </th>
                <th>
                    供应商名称
                </th>
                <th>
                   总吨数(万吨)
                </th>
                <th>
                    创建日期
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
                    <td>${r.contractNo}</td>
                    <td>${r.supplierName}</td>
                    <td>${r.calorificNumSum}</td>
                    <td>${r.createDate}</td>
                    <td>${r.status}</td>

                    <td>
                        <a href="<%=basePath%>bondCtractManager/selectBondCtractSupportInfo?contractNo=${r.contractNo}" class="btn btn-primary">查看</a>
                        <a  onclick="showBondCtractSupportInfo('${r.status}',this)"  href="javascript:void(0)" url="<%=basePath%>bondCtractManager/addBondCtractSupportInfo?contractNo=${r.contractNo}" class="btn btn-primary">添加补充协议</a>
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
</div>

</body>
</html>
