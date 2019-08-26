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
            $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow=1").submit();
        }
        function firstPage(){
            $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow=1").submit();
        }
        function laterPage(pageNow){
            if(pageNow=="1"){
                $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow=1").submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow="+(pageNow-1)).submit();
            }

        }

        function nextPage(pageNow,totalPage){
            if(pageNow==totalPage){
                $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow="+totalPage).submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow="+(parseInt(pageNow)+1)).submit();
            }

        }
        function lastPage(totalPage){

           $("#searchForm").attr("action","<%=basePath%>sys/selectDepartmentPage?pageNow="+totalPage).submit();
        }

    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">

<!--内容部分  JSTL标签库（c），EL表达式-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            系统信息管理-<span style="font-size:14px;">部门信息</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <form class="form-inline" id="searchForm" action="<%=basePath%>sys/selectDepartmentPage" method="post">
                <div class="formRow">
                    <div class="form-group">
                        <label  >部门名称</label>
                        <input type="text"  value="${branchName}" name="branchName" class="form-control"   >
                    </div>
                    <div class="form-group">
                        <label  >禁用/启用</label>
                        <select name="flag">
                            <option value="">--请选择--</option>
                                <option value="0" <c:if test="${flag=='0'}"> selected </c:if>>禁用</option>
                                <option value="1" <c:if test="${flag=='1'}"> selected </c:if> >启用</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label  >审核状态</label>
                        <select name="estate">
                            <option value="">--请选择--</option>

                            <option value="N" <c:if test="${estate=='N'}"> selected </c:if>>未审核</option>
                            <option value="Y" <c:if test="${estate=='Y'}"> selected </c:if>>通过审核</option>
                            <option value="F" <c:if test="${estate=='F'}"> selected </c:if>>被驳回</option>

                        </select>
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-primary" onclick="search()">查询</button>
                        <a   class="btn btn-primary"  href="<%=basePath%>sys/loadAddDepartMentPage" >新增</a>
                    </div>

                </div>
            </form>
        </div>
        <table class="table table-hover font-table">
            <thead>

            <tr>
                <th>序号</th>
                <th>
                    部门名称
                </th>
                <th>
                    类型
                </th>
                <th>
                    状态(可用/禁用)
                </th>
                <th>
                    所属组织机构
                </th>
                <th>
                    所属中心
                </th>
                <th>
                     版本
                </th>
                <th>
                    审核状态
                </th>
                <th>
                    描述
                </th>
                <th>操作</th>
            </tr>

            </thead>
            <tbody>
            <c:forEach items="${rows}" var="r"   varStatus="st">
                <tr>
                    <td class="text-nowrap" scope="row">${st.count}</td>
                    <td>${r.branchName}</td>
                    <td>${r.branchType}</td>
                    <td>${r.flag}</td>
                    <td>${r.branchCode}</td>
                    <td>${r.belongCenter}</td>
                    <td>${r.version}</td>
                    <td>${r.estate}</td>
                    <td>${r.bewrite}</td>
                    <td>
                        <a href="<%=basePath%>sys/deleteDeptment?deptId=${r.id}" class="btn btn-primary">删除</a>
                        <a href="<%=basePath%>sys/selectDeptmentForUpdate?deptId=${r.id}" class="btn btn-primary">修改</a>
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
