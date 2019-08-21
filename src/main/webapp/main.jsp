<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>国电煤炭交易平台</title>
    <%@include file="/include.jsp"%>
    <script type="text/javascript">
        //点击导航访问url（获取当前a的url属性，赋值给iframe的src）
        function checkUrl(obj){
           $("#mainFrame").attr("src", $(obj).attr("url"));
        }

    </script>
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

            <div class="sidebar-menu">
                <ul>
                    <li class="header-menu"><span>系统菜单>></span></li>
                    <li class="sidebar-dropdown">
                        <a  href="#" ><i class="fa fa-tv"></i><span>系统信息管理</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>sys/selectOrganPage?pageNow=1">组织机构管理</a></li>
                                <li><a href="#">部门信息管理</a></li>
                                <li><a href="#">岗位信息管理</a></li>
                                <li><a href="#">用户信息管理</a></li>
                                <li><a href="#">角色信息管理</a></li>
                                <li><a href="#">资源信息管理</a></li>
                                <li><a href="#">菜单目录管理</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-photo"></i><span>会员中心</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>/check/toDo?pageNow=1">代办中心管理</a></li>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>/check/selectPurchapplyPage?pageNow=1">采购审批管理</a></li>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>/execute/selectApplydetailPage?pageNow=1">采购执行管理</a></li>

                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-photo"></i><span>保证金管理</span></a>
                        <div class="sidebar-submenu">
                            <ul>

                                <li><a href="#">保证金明细</a></li>

                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-photo"></i><span>长协交易管理</span></a>
                        <div class="sidebar-submenu">
                            <ul>

                                <li><a href="#">长协交易查询</a></li>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>bondCtractManager/loadAddBondCtractPage">长协交易创建</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="sidebar-dropdown">
                        <a href="#"><i class="fa fa-photo"></i><span>采购申请管理</span></a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>tFultbtemplateManager/loadTFultbtemplate">采购申请查询</a></li>
                                <li><a href="javascript:void(0)" onclick="checkUrl(this)" url="<%=basePath%>tFultbtemplateManager/loadCreateTFultbtemplate">采购申请创建</a></li>
                            </ul>
                        </div>
                    </li>


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
        <iframe id="mainFrame" src="<%=basePath%>demo/content.jsp" frameborder="0" style="width:100%;height:100%" style="margin:0px;"></iframe>
        <div style="text-align:center;font-size:12px;">
            联系信息。。。。。联系信息。。。。。联系信息。。。。。
        </div>
    </main><!-- page-content" -->
</div><!-- page-wrapper -->

</div>

</body>
</html>
