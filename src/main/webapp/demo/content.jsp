<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        //选中/取消父节点时选中/取消所有子节点
        function getChildNodeIdArr(node) {
            var ts = [];
            if (node.nodes) {
                for (x in node.nodes) {
                    ts.push(node.nodes[x].nodeId);
                    if (node.nodes[x].nodes) {
                        var getNodeDieDai = getChildNodeIdArr(node.nodes[x]);
                        for (j in getNodeDieDai) {
                            ts.push(getNodeDieDai[j]);
                        }
                    }
                }
            } else {
                ts.push(node.nodeId);
            }
            return ts;
        }
        //选中所有子节点时选中父节点
        function setParentNodeCheck(node) {
            var parentNode = $("#tree").treeview("getNode", node.parentId);
            if (parentNode.nodes) {
                var checkedCount = 0;
                for (x in parentNode.nodes) {
                    if (parentNode.nodes[x].state.checked) {
                        checkedCount ++;
                    } else {
                        break;
                    }
                }
                if (checkedCount === parentNode.nodes.length) {
                    $("#tree").treeview("checkNode", parentNode.nodeId);
                    setParentNodeCheck(parentNode);
                }
            }
        }

        $(function () {
            $.ajax({
                type: "get",
                url:"<%=basePath%>js/json/treeView.json",
                dataType: "json",
                success: function (result) {
                    $('#tree').treeview({
                        data: result,         // 数据源
                        showCheckbox: true,   //是否显示复选框
                        highlightSelected: true,    //是否高亮选中
                        multiSelect: false,    //多选
                        levels : 2,
                        enableLinks : true,//必须在节点属性给出href属性
                        color: "#010A0E",
                        onNodeChecked : function (event,node) {
                            var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                            if (selectNodes) { //子节点不为空，则选中所有子节点
                                $('#tree').treeview('checkNode', [selectNodes, { silent: true }]);
                            }
                        },
                        onNodeUnchecked : function(event, node) { //取消选中节点
                            var selectNodes = getChildNodeIdArr(node); //获取所有子节点
                            if (selectNodes) { //子节点不为空，则取消选中所有子节点
                                $('#tree').treeview('uncheckNode', [selectNodes, { silent: true }]);
                            }
                        },

                        onNodeExpanded : function(event, data) {

                        },

                        onNodeSelected: function (event, data) {
                            //alert(data.nodeId);
                        }

                    });
                },
                error: function () {
                    alert("菜单加载失败！")
                }
            });
        })
    </script>

</head>
<body style="padding:0px;margin:0px;background-color:#fff;">

<%--<div class="panel panel-default">
    <!--测试treeView-->
    <div id="tree" class="col-sm-2"></div>
</div>--%>

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
