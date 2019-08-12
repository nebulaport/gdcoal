<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="<%=basePath%>js/main/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <!--导航布局-->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/main/css/custom.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/main/css/demo.css">
    <link href="<%=basePath%>js/main/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>js/main/css/jquery.mCustomScrollbar.min.css">
    <script type="text/javascript" src="<%=basePath%>js/main/js/custom.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/main/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <style type="text/css">
        .formRow{padding-left:50px;padding-top:20px;}
        .formRow .form-group label{color:#052963;}
        .panelTitle{color:#052963;font-weight:bold;font-family:"黑体"}
        .form-group{padding-left:10px;}
        .font-table{color:#052963}
    </style>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">
<!--内容部分-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#052963">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            保证金管理-<span style="font-size:14px;">添加保证金</span>
        </h2>
    </div>
    <div class="panel-body">
        <form class="form-inline">
            <div class="formRow">
                <div class="form-group">
                    <label for="exampleInputName1">Name</label>
                    <input type="text" class="form-control" id="exampleInputName1" placeholder="Jane Doe">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail2">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
                </div>
                <div class="form-group">
                    <label for="exampleInputName3">Name</label>
                    <input type="text" class="form-control" id="exampleInputName3" placeholder="Jane Doe">
                </div>

            </div>
            <div class="formRow">
                <div class="form-group">
                    <label for="exampleInputName4">Name</label>
                    <input type="text" class="form-control"  id="exampleInputName4" placeholder="Jane Doe">
                </div>
                <div class="form-group">
                    <label for="exampleInputName5">Name</label>
                    <input type="text" class="form-control" id="exampleInputName5"  placeholder="Jane Doe">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail6">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail6"  placeholder="jane.doe@example.com">
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
<!--内容部分-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            保证金管理-<span style="font-size:14px;">添加保证金</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <form class="form-inline">
                <div class="formRow">
                    <div class="form-group">
                        <label  >Name</label>
                        <input type="text" class="form-control"  placeholder="Jane Doe">
                    </div>
                    <div class="form-group">
                        <label  >Email</label>
                        <input type="email" class="form-control"  placeholder="jane.doe@example.com">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">查询</button>
                    </div>

                </div>
              </form>
            </div>
            <table class="table table-hover font-table">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>
                       标题1

                    </th>
                    <th>
                        标题1
                    </th>
                    <th>
                        标题1
                    </th>
                    <th>
                        标题1
                    </th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <td class="text-nowrap" scope="row">1</td>
                    <td>None</td>
                    <td>750px</td>
                    <td>970px</td>
                    <td>1170px</td>
                    <td><button type="submit" class="btn btn-primary">删除</button></td>
                </tr>
                <tr>
                    <td class="text-nowrap" scope="row">2</td>
                    <td>None</td>
                    <td>750px</td>
                    <td>970px</td>
                    <td>1170px</td>
                    <td><button type="submit" class="btn btn-primary">删除</button></td>
                </tr>
                <tr>
                    <td class="text-nowrap" scope="row">3</td>
                    <td>None</td>
                    <td>750px</td>
                    <td>970px</td>
                    <td>1170px</td>
                    <td><button type="submit" class="btn btn-primary">删除</button></td>
                </tr>
                <tr>
                    <td class="text-nowrap" scope="row">3</td>
                    <td>None</td>
                    <td>750px</td>
                    <td>970px</td>
                    <td>1170px</td>
                    <td><button type="submit" class="btn btn-primary">删除</button></td>
                </tr>
                <tr>
                    <td class="text-nowrap" scope="row">3</td>
                    <td>None</td>
                    <td>750px</td>
                    <td>970px</td>
                    <td>1170px</td>
                    <td><button type="submit" class="btn btn-primary">删除</button></td>
                </tr>
                <tr>
                    <td class="text-nowrap" scope="row">3</td>
                    <td>None</td>
                    <td>750px</td>
                    <td>970px</td>
                    <td>1170px</td>
                    <td><button type="submit" class="btn btn-primary">删除</button></td>
                </tr>

                </tbody>
            </table>
            <nav aria-label="...">
                <ul class="pagination">
                    <li ><a href="#" aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
                    <li ><a href="#" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
                    <li ><a href="#" aria-label="Previous"><span aria-hidden="true">下一页</span></a></li>
                    <li ><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>
                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">共X页</span></a></li>
                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">第X页</span></a></li>
                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">总记录数：x</span></a></li>

                </ul>
            </nav>

    </div>

    </div>
<!--内容部分-->
<div class="panel panel-default">
    <div class="panel-heading" style="background-color:#05298F">
        <h2 class="panel-title" style="font-weight:bold; color:#fff;">
            保证金管理-<span style="font-size:14px;">添加保证金</span>
        </h2>
    </div>
    <div class="panel-body">
        <div class="panel panel-default">
            <h3 class="panel-title panelTitle">基本信息</h3>
            <div class="panel-body">
                <div class="table-responsive">
                    <form class="form-inline">
                        <div class="formRow">
                            <div class="form-group">
                                <label  >Name</label>
                                <input type="text" class="form-control"  placeholder="Jane Doe">
                            </div>
                            <div class="form-group">
                                <label  >Email</label>
                                <input type="email" class="form-control"  placeholder="jane.doe@example.com">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">查询</button>
                            </div>

                        </div>
                    </form>
                </div>


            </div>

        </div>
        <div class="panel panel-default">
            <h3 class="panel-title panelTitle">关联补充协议</h3>
            <div class="panel-body">
                <table class="table table-hover font-table">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>
                            标题1

                        </th>
                        <th>
                            标题1
                        </th>
                        <th>
                            标题1
                        </th>
                        <th>
                            标题1
                        </th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td class="text-nowrap" scope="row">1</td>
                        <td>None</td>
                        <td>750px</td>
                        <td>970px</td>
                        <td>1170px</td>
                        <td><button type="submit" class="btn btn-primary">删除</button></td>
                    </tr>
                    <tr>


                        <td colspan="6"><button type="submit" class="btn btn-primary">删除</button></td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>

    </div>

</div>

</div>

</body>
</html>
