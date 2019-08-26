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
            $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow=1").submit();
        }
        function firstPage(){
            $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow=1").submit();
        }
        function laterPage(pageNow){
            if(pageNow=="1"){
                $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow=1").submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow="+(pageNow-1)).submit();
            }

        }

        function nextPage(pageNow,totalPage){
            if(pageNow==totalPage){
                $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow="+totalPage).submit();
            }else{
                $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow="+(parseInt(pageNow)+1)).submit();
            }

        }
        function lastPage(totalPage){

            $("#searchForm").attr("action","<%=basePath%>sys/selectPtRRoleOrganPage?pageNow="+totalPage).submit();
        }


         $(function(){
             //点击左侧组织机构，加载右侧组织机构
             $("#organName1").change(function(){
                 var val=  $(this).val();
                 $("#organName2").get(0).options.length=0;

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
                                 $("#organName2").append(option);
                             }
                         },
                         error:function(){
                             alert("响应失败！");
                         }

                     });
                 }else{
                     $("#organName2").get(0).options.length=0;
                     var option =new Option("--请选择--","");
                     $("#organName2").append(option);
                 }
             });
         });
    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">

<!--内容部分  JSTL标签库（c），EL表达式-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            系统信息管理-<span style="font-size:14px;">岗位信息</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <form class="form-inline" id="searchForm" action="<%=basePath%>sys/selectPtRRoleOrganPage" method="post">
                <div class="formRow">
                    <div class="form-group">
                        <label  >岗位名称</label>
                        <input type="text"  value="${name}" name="name" class="form-control"   >
                    </div>
                    <div class="form-group">
                        <label  >所属组织机构</label>
                        <select class="form-control"  id="organName1" name="organName1">
                            <option value="">--请选择--</option>
                            <c:forEach items="${parentRows}" var="r">
                                <option   <c:if test="${organName1==r.organUuid}">selected</c:if> value="${r.organUuid}">${r.organName}</option>
                            </c:forEach>
                        </select>
                        <select class="form-control" id="organName2"  name="organName2">
                            <option value="">--请选择--</option>
                            <c:forEach items="${organName2_rows}" var="r">
                                <option <c:if test="${organName2==r.organUuid}">selected</c:if>   value="${r.organUuid}">${r.organName}</option>
                            </c:forEach>




                        </select>
                    </div>
                    <div class="form-group">
                        <label  >所属角色</label>
                        <select class="form-control"   name="roleName">
                            <option value="">--请选择--</option>
                            <c:forEach items="${roleList}" var="r">
                                <option  <c:if test="${r.roleUuid==roleName}">selected</c:if> value="${r.roleUuid}">${r.roleName}</option>
                            </c:forEach>

                        </select>
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-primary" onclick="search()">查询</button>
                        <a   class="btn btn-primary"  href="<%=basePath%>sys/loadAddRRoleOrganPage" >新增</a>
                    </div>

                </div>
            </form>
        </div>
        <table class="table table-hover font-table">
            <thead>

            <tr>
                <th>序号</th>
                <th>
                    岗位名称
                </th>
                <th>
                    所属组织机构
                </th>
                <th>
                    所属组织机构类型
                </th>
                <th>
                    所属角色
                </th>

                <th>操作</th>
            </tr>

            </thead>
            <tbody>
            <c:forEach items="${rows}" var="r"   varStatus="st">
                <tr>
                    <td class="text-nowrap" scope="row">${st.count}</td>
                    <td>${r.name}</td>
                    <td>${r.organName}</td>
                    <td>${r.organType}</td>
                    <td>${r.roleName}</td>

                    <td>
                        <a href="<%=basePath%>sys/deletePtRRoleOrgan?dutyid=${r.dutyid}" class="btn btn-primary">删除</a>
                        <a href="<%=basePath%>sys/selectPtRRoleOrganForUpdate?dutyid=${r.dutyid}" class="btn btn-primary">修改</a>
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
