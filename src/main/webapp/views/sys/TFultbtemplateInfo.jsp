<%--
  Created by IntelliJ IDEA.
  User: tupingping
  Date: 2019/8/13
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>保存采购申请</title>
    <%@include file="/include.jsp" %>
    <style type="text/css">
        .formRow {
            padding-left: 20px;
            padding-top: 20px;
            border-bottom: 1px dashed #C9C9C9;
        }
        .formRow .form-group label {
            color: black;
            font-size: 12px;
            font-weight: bold;
            font-family: "宋体";

        }

        .formRow .form-group input {
            color: black;
            font-size: 12px;
            font-family: "宋体";

        }

        .form-group {
            padding-left: 10px;

        }

        .m {
            color: black;
            font-weight: bold;
            font-family: "黑体";
            font-size: 15px;
            background-color: #BADFDB;

        }

        h3{
            color: black;
            font-weight: bold;
            font-family: "黑体";
            border-bottom: 2px solid #0166CD;
        }

        .box {
            width: 98%;
            background-color: #F9F9F9;
            border-top: 2px solid #0166CD;
            border-left: 1px solid #C9C9C9;
            border-right: 1px solid #C9C9C9;
            border-bottom: 1px solid #C9C9C9;
            top: -5px;
        }
    </style>
    <script type="text/javascript">

    </script>
</head>
<body style="padding:0px;margin:0px;background-color:#fff;">
<!--内容部分-->
<div class="panel panel-default">

    <!--内容部分-->
    <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#05298F">
            <h2 class="panel-title" style="font-weight:bold; color:#fff;">
                采购申请管理-<span style="font-size:15px;">采购申请创建</span>
            </h2>
        </div>
        <form class="form-inline" method="post" enctype="multipart/form-data" id="addTFultbtemplate"
              action="<%=basePath%>saveTFultbtemplate">
            <input type="hidden" id="status" name="status">
            <div class="panel-body">
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle" style = "background-color: #0166CD;width:70px;text-align: center;">基本情况</h3>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>报价截止时间：</label>
                                    <input readonly="readonly" disabled value="${entity.jhtimeEnd}" name="jhtimeEnd" id="jhtimeEnd" type="text"
                                           class="form-control datepicker">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>申请单位：</label>
                                    <input type="text" readonly="readonly" disabled id="createuserdeptid" name="createuserdeptid" value="${entity.createuserdeptid}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>单据编号：</label>
                                    <input type="text" readonly="readonly" disabled id="billnumber" name="billnumber" value="${entity.billnumber}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>申请人：</label>
                                    <input type="text" readonly="readonly" disabled id="createuser" name="createuser" value="${entity.createuser}"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>签发人：</label>
                                    <input type="text" readonly="readonly" disabled id="signname" name="signname" value="${entity.signname}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>申请日期：</label>
                                    <input readonly="readonly" disabled name="createdate" id="createdate" type="text"  value="${entity.createdate}"
                                           class="form-control datepicker">
                                </div>
                                <div class="form-group">
                                    <label>交货时间：</label>
                                    <!--交货开始时间-->
                                    <input readonly="readonly" disabled name="jhtime" id="jhtime" type="text" value="${entity.jhtime}"
                                           class="form-control datepicker">
                                    <label>至</label>
                                    <!--交货截止时间-->
                                    <input readonly="readonly" disabled name="jhtime2" id="jhtime2" type="text" value="${entity.jhtime2}"
                                           class="form-control datepicker">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>煤种：</label>
                                </div>
                                <div class="form-group" id = "coal">
                                    <c:forEach  items="${entity}" var="e" varStatus="a">
                                        <ul>
                                            <li class='text-nowrap' scope='row'>
                                                    ${a.count}
                                            </li>
                                            <li>
                                                <select  disabled readonly="readonly"  id='coalclass' onchange="coalclass(this)"  style='width:120px' class='form-control' name='coalclass' >
                                                    <c:if test="${fn:split(e.coalclass,':')[0]=='WY'}">
                                                        <option selected value='WY'>无烟煤</option>
                                                        <option value='YM'>烟煤</option>
                                                        <option value='HY'>褐煤</option>
                                                    </c:if>
                                                    <c:if test="${fn:split(e.coalclass,':')[0]=='YM'}">
                                                        <option  value='WY'>无烟煤</option>
                                                        <option selected value='YM'>烟煤</option>
                                                        <option value='HY'>褐煤</option>
                                                    </c:if>
                                                    <c:if test="${fn:split(e.coalclass,':')[0]=='HY'}">
                                                        <option  value='WY'>无烟煤</option>
                                                        <option value='YM'>烟煤</option>
                                                        <option selected value='HY'>褐煤</option>
                                                    </c:if>

                                                </select>
                                                <select disabled readonly="readonly" style='width:120px' id='coaltype'  class='form-control' name='coaltype'>
                                                    <option value="WY1"  <c:if test="${fn:split(e.coaltype,':')[1]=='WY1'}">selected</c:if> >无烟一号</option>
                                                    <option value="WY2"  <c:if test="${fn:split(e.coaltype,':')[1]=='WY2'}">selected</c:if>>无烟二号</option>
                                                    <option value="WY3"  <c:if test="${fn:split(e.coaltype,':')[1]=='WY3'}">selected</c:if>>无烟三号</option>
                                                    <option value="HY1"  <c:if test="${fn:split(e.coaltype,':')[1]=='HY1'}">selected</c:if>>褐煤一号</option>
                                                    <option value="HY2"  <c:if test="${fn:split(e.coaltype,':')[1]=='HY2'}">selected</c:if>>褐煤二号</option>
                                                    <option value="PM"  <c:if test="${fn:split(e.coaltype,':')[1]=='PM'}">selected</c:if>>贫煤</option>
                                                    <option value="PS"  <c:if test="${fn:split(e.coaltype,':')[1]=='PS'}">selected</c:if>>贫瘦煤</option>
                                                    <option value="SM"  <c:if test="${fn:split(e.coaltype,':')[1]=='SM'}">selected</c:if>>瘦煤</option>
                                                    <option value="JM"  <c:if test="${fn:split(e.coaltype,':')[1]=='JM'}">selected</c:if>>焦煤</option>
                                                    <option value="QM"  <c:if test="${fn:split(e.coaltype,':')[1]=='QM'}">selected</c:if>>气煤</option>
                                                </select>
                                            </li>
                                        </ul>
                                    </c:forEach>
                                </div>
                                <div class="form-group">
                                    <label>采购数量：</label>
                                    <input type="text" readonly="readonly" disabled id="qty" name="qty" value="${entity.qty}"
                                           class="form-control">
                                    <label>（万吨）</label>
                                </div>
                                <div class="form-group">
                                    <label>运输方式：</label>
                                    <select readonly="readonly" disabled name="yunshuMode" id="yunshuMode" class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.yunshuMode==1}">
                                            <option selected value="1">火车</option>
                                            <option value="2">航空</option>
                                        </c:if>
                                        <c:if test="${entity.yunshuMode==2}">
                                            <option  value="1">火车</option>
                                            <option selected value="2">航空</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>交货地点：</label>
                                    <input type="text" readonly="readonly" disabled id="jiaohuoMode" name="jiaohuoMode" value="${entity.jiaohuoMode}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>结算方式：</label>
                                    <select readonly="readonly" disabled name="jiesuanMode" id="jiesuanMode" class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.jiesuanMode==1}">
                                            <option selected value="1">现金</option>
                                            <option value="2">电子转账</option>
                                        </c:if>
                                        <c:if test="${entity.jiesuanMode==2}">
                                            <option  value="1">现金</option>
                                            <option selected value="2">电子转账</option>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>验收方式：</label>
                                    <select readonly="readonly" disabled name="yanshouMode" id="yanshouMode" class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.yanshouMode==1}">
                                            <option selected value="1">到场验收</option>
                                            <option value="2">非到场验收</option>
                                        </c:if>
                                        <c:if test="${entity.yanshouMode==2}">
                                            <option  value="1">到场验收</option>
                                            <option selected value="2">非到场验收</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>最高限价：</label>
                                    <input type="text" readonly="readonly" disabled id="maxlimitprice" name="maxlimitprice" value="${entity.maxlimitprice}"
                                           class="form-control">
                                    <label>（元/卡.吨）</label>
                                </div>
                                <div class="form-group">
                                    <label>最低限价：</label>
                                    <!--TFULTBPURCHASINGAPPLYDETAIL表中QCALMIN属性-->
                                    <input type="text" readonly="readonly" disabled id="minlimitprice" name="minlimitprice" value="${entity.minlimitprice}"
                                           class="form-control">
                                    <label>（元/卡.吨）</label>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group" style="height: 40px">
                                    <label>最高限价说明：</label>
                                    <textarea class="form-group" readonly="readonly" disabled name="maxremark" style = "width: 300px;height: 40px;">${entity.maxremark}</textarea>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>结算付款方式：</label>
                                    <textarea class="form-group" readonly="readonly" disabled name="paymode" style = "width: 300px;height: 40px;">${entity.paymode}</textarea>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>报价保证金缴纳：</label>
                                    <lable class="input" readonly="readonly" disabled>
                                        不要求<input type="radio" name="notquotebond" value="0">
                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                        要求<input type="radio" name="isquotebond" value="1">
                                    </lable>
                                </div>
                                <div class="form-group">
                                    <label>履约保证金缴纳：</label>
                                    <lable class="input" readonly="readonly" disabled>
                                        不要求<input type="radio" name="notperformbond" value="0">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        要求<input type="radio" name="isperformbond" value="1">
                                    </lable>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle" style = "background-color: #0166CD;width:70px;text-align: center;">煤质要求</h3>
                    <div class="panel-body">
                        <h3 class="m">收到基基准</h3>
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>收到基低位发热量Qnet,ar>=：</label>
                                    <input type="text" readonly="readonly" disabled id="type1" name="type1" value="${entity.type1}"
                                           class="form-control">
                                    <label>（KCal/kg）</label>
                                </div>
                                <div class="form-group">
                                    <label>收到基全硫St,ar>=：</label>
                                    <input type="text" readonly="readonly" disabled id="type4" name="type4" value="${entity.type4}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>全水分M<=：</label>
                                    <input type="text" readonly="readonly" disabled id="type2" name="type2" value="${entity.type2}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>收到基灰分Aar<=：</label>
                                    <input type="text" readonly="readonly" disabled id="type6" name="type6" value="${entity.type6}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>收到基挥发分Var：</label>
                                    <input type="text" readonly="readonly" disabled id="type3" name="type3" value="${entity.type3}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" readonly="readonly" disabled id="type32" name="type32" value="${entity.type32}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>

                        </div>
                        <h3 class="m">空气干燥基基准</h3>
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>空干基水分Mad<=：</label>
                                    <input type="text" readonly="readonly" disabled id="kgj1" name="kgj1" value="${entity.kgj1}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>空干基全硫St，ad<=：</label>
                                    <input type="text" readonly="readonly" disabled id="kgj2" name="kgj2" value="${entity.kgj2}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>空干基挥发分Vad：</label>
                                    <input type="text" readonly="readonly" disabled id="kgj3" name="kgj3" value="${entity.kgj3}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" readonly="readonly" disabled id="kgj4" name="kgj4" value="${entity.kgj4}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>

                        </div>
                        <h3 class="m">干基基准</h3>
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>干基高位发热量Qgr,d>=：</label>
                                    <input type="text" readonly="readonly" disabled id="type11" name="type11" value="${entity.type11}"
                                           class="form-control">
                                    <label>（KCal/kg）</label>
                                </div>
                                <div class="form-group">
                                    <label>干基全硫St,d<=：</label>
                                    <input type="text" readonly="readonly" disabled id="type14" name="type14" value="${entity.type14}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>干燥无灰基挥发分：</label>
                                    <input type="text" readonly="readonly" disabled id="type323" name="type323" value="${entity.type323}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" readonly="readonly" disabled id="type333" name="type333" value="${entity.type333}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>
                            <div class="box">
                                <div class="formRow">
                                    <div class="form-group">
                                        <label>粒度（mm）<=：</label>
                                        <input type="text" readonly="readonly" disabled id="type8" name="type8" value="${entity.type8}"
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>灰熔点ST（°C）>=：</label>
                                        <input type="text" readonly="readonly" disabled id="type5" name="type5" value="${entity.type5}"
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>哈氏可磨系数（HGI）>=：</label>
                                        <input type="text" readonly="readonly" disabled id="type7" name="type7" value="${entity.type7}"
                                               class="form-control">
                                    </div>
                                </div>
                                <div class="formRow">
                                    <div class="form-group">
                                        <label>备注：</label>
                                        <textarea class="form-group" readonly="readonly" disabled id ="remark"  name="remark" style = "width: 300px;height: 40px;">${entity.remark}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="formRow" style="text-align: center;">
                                <div class="form-group">
                                    <c:if test="${entity.status==1}">
                                        <a  href="<%=basePath%>tFultbtemplateManager/submitTFultbtemplate?templateid=${entity.templateid}" id="submitTFultbtemplate"  class="btn btn-primary" >提交</a>
                                    </c:if>
                                    <a  class="btn btn-primary"  href="<%=basePath%>tFultbtemplateManager/loadCreateTFultbtemplate">返回</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</div>
</body>
</html>
