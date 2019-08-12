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
</head>
<body style="background-color:#F3F5F8">


<!--左侧导航和页面主体部分-->
<div id="main" >
<div class="page-wrapper"  >
    <nav id="sidebar"  class="sidebar-wrapper" >
        <div class="sidebar-content">
            <a href="#" id="toggle-sidebar"   ><i   class="fa fa-bars"></i></a>
            <div class="sidebar-brand" >
                <a href="JavaScript:void(0)">国电煤炭交易平台</a>
            </div>
            <div class="sidebar-header"  >
                <div class="user-pic">
                    <img class="img-responsive img-rounded"   src="<%=basePath%>image/user.jpg" alt="">
                </div>
                <div class="user-info">
                    <span class="user-name" style="font-size:16px;">张三</span>
                    <span class="user-role"  style="font-size:14px;color:#f5f5f5">电厂采购员</span>
                    <div class="user-status">
                        <%--<a href="#"><span class="label label-success">Online</span></a>--%>
                    </div>
                </div>
            </div><!-- sidebar-header  -->
            <%--
            <div class="sidebar-search">
                <div>
                    <div class="input-group">
                        <input type="text" class="form-control search-menu" placeholder="Search for...">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    </div>
                </div>
            </div>
            --%><!-- sidebar-search  -->
            <div class="sidebar-menu">
                <ul>
                    <li class="header-menu"><span>Dropdown  menu</span></li>
                    <li class="sidebar-dropdown">
                        <a  href="#" ><i class="fa fa-tv"></i><span>Menu 1</span><span class="label label-danger">New</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="#">submenu 1 <span class="label label-success">10</span></a> </li>
                                <li><a href="#">submenu 2</a></li>
                                <li><a href="#">submenu 3</a></li>
                                <li><a href="#">submenu 4</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-photo"></i><span>Menu 2</span><span class="badge">3</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="#">submenu 1 <span class="badge">2</span></a></li>
                                <li><a href="#">submenu 2</a></li>
                                <li><a href="#">submenu 3</a></li>
                                <li><a href="#">submenu 4</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-bar-chart-o"></i><span>Menu 3</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="#">submenu 1</a></li>
                                <li><a href="#">submenu 2</a></li>
                                <li><a href="#">submenu 3</a></li>
                                <li><a href="#">submenu 4</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-diamond"></i><span>Menu 4</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="#">submenu 1</a></li>
                                <li><a href="#">submenu 2</a></li>
                                <li><a href="#">submenu 3</a></li>
                                <li><a href="#">submenu 4</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="header-menu"><span>Simple menu</span></li>
                    <li><a href="#"><i class="fa fa-tv"></i><span>Menu 1</span></a></li>
                    <li><a href="#"><i class="fa fa-photo"></i><span>Menu 2</span></a></li>
                    <li><a href="#"><i class="fa fa-bar-chart-o"></i><span>Menu 3</span></a></li>
                    <li><a href="#"><i class="fa fa-diamond"></i><span>Menu 4</span></a></li>
                </ul>
            </div><!-- sidebar-menu  -->
        </div><!-- sidebar-content  -->

        <div class="sidebar-footer">
            <a href="#"><i class="fa fa-bell"></i><span class="label label-warning notification">3</span></a>
            <a href="#"><i class="fa fa-envelope"></i><span class="label label-success notification">7</span></a>
            <a href="#"><i class="fa fa-gear"></i></a>
            <a href="#"><i class="fa fa-power-off"></i></a>
        </div>
    </nav><!-- sidebar-wrapper  -->

    <!--页面主体-->
    <main class="page-content" style="margin-bottom:0px;">
        <div class="container-fluid" style="padding:5px;">
            <!--右侧头-->
            <header class="header" style="padding:0px;padding-left:30px;padding-right:30px; ">
                <!--logo导航-->
                <nav class="navbar" style="width:100%;" >
                    <div class="container-fluid navbackground">
                        <div class="navbar-header" style="float:left;width:40%">
                            <image src="<%=basePath %>image/logo3.png" ></image>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse" style="float:left;width:60%;text-align: right;">
                            <ul class="nav navbar-nav navbar-right" style="padding-right:50px;font-size:14px;">
                                <li><a href="javascript:void(0)" style="padding-left:0px;padding-top:2px;padding-bottom:2px;padding-right:0px;">客服中心</a></li>
                                <li><a href="javascript:void(0)"  style="padding-left:0px;padding-top:2px;padding-bottom:2px;">|客服热线： 400-020-8000（非工作时间：15011089832）</a></li>
                                <li style="clear:both;paddin-top:0px;">
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>

            </header>

        </div>



        <!--内容部分-->
        <iframe src="<%=basePath%>demo/content.jsp" frameborder="0" style="width:100%;height:100%" style="margin:0px;"></iframe>
        <div style="text-align:center;font-size:12px;">
            联系信息。。。。。联系信息。。。。。联系信息。。。。。
        </div>
    </main><!-- page-content" -->
</div><!-- page-wrapper -->

</div>

</body>
</html>
