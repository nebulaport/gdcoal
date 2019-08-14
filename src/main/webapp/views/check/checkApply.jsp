<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: NebulaPort
  Date: 2019/8/13
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include.jsp"%>

<html>
<head>
    <title>采购申请审批</title>

    <style type="text/css">
        .formRow {
            padding-left: 50px;
            padding-top: 20px;
        }

        .formRow .form-group label {
            color: #052963;
        }

        .panelTitle {
            color: #052963;
            font-weight: bold;
            font-family: "黑体"
        }

        .form-group {
            padding-left: 10px;
        }

        .font-table {
            color: #052963
        }

        body {
            padding: 0;
            margin: 0;
            background-color: #fff;
        }
    </style>
</head>
<body>



<!--内容部分-->
<div class="panel panel-default">

    <!--内容部分-->
    <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#05298F">
            <h2 class="panel-title" style="font-weight:bold; color:#fff;">
                会员中心-<span style="font-size:14px;">采购申请审批</span>
            </h2>
        </div>
        <input type="hidden" id="status" name="status">
        <div class="panel-body">
            <div class="panel panel-default">
                <h3 class="panel-title panelTitle">基本信息</h3>
                <div class="panel-body">
                    <div class="table-responsive">

                        <div class="formRow">
                            <div class="form-group">
                                <label>交易单据编号</label>
                                <input readonly="readonly" disabled type="text" value="${tFultbpurchasingapply.purchapplyid}"
                                       id="purchapplyid" name="purchapplyid"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label>创建日期</label>
                                <input readonly="readonly" disabled type="text" value="${tFultbpurchasingapply.createdate}"
                                       name="createdate" id="createdate" class="form-control datepicker">
                            </div>
                            <div class="form-group">
                                <label>煤种</label>
                                <input readonly="readonly" disabled id="text" value="${tFultbpurchasingapply.coaltype}" name="coaltype"
                                       type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>结算方式</label>
                                <input readonly="readonly" disabled type="text" value="${tFultbpurchasingapply.jiesuanMode}"
                                       id="jiesuanMode" name="jiesuanMode"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label>发起人</label>
                                <input readonly="readonly" disabled type="text" value="${tFultbpurchasingapply.createuser}"
                                       name="createuser" id="createuser" class="form-control datepicker">
                            </div>
                            <div class="form-group">
                                <label>备注</label>
                                <input readonly="readonly" disabled id="remark" value="${tFultbpurchasingapply.remark}" name="remark"
                                       type="text" class="form-control">
                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="formRow" style="text-align: center;">
            <div class="form-group">
                <a href="<%=basePath%>check/applyPass?purchapplyid=${tFultbpurchasingapply.purchapplyid}"
                   id="submitBtn" class="btn btn-primary">通过</a>
                <a href="<%=basePath%>check/applyFail?purchapplyid=${tFultbpurchasingapply.purchapplyid}"
                   class="btn btn-primary">不通过</a>

                <a class="btn btn-primary" href="<%=basePath%>check/logPurchapplyPage">返回</a>
            </div>
        </div>
    </div>

</div>


</body>
</html>
