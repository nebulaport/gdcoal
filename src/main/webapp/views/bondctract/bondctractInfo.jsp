<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/include.jsp"%>
    <style type="text/css">
        .formRow{padding-left:50px;padding-top:20px;}
        .formRow .form-group label{color:#052963;}
        .panelTitle{color:#052963;font-weight:bold;font-family:"黑体"}
        .form-group{padding-left:10px;height:80px;}
        .font-table{color:#052963}
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
                长协交易管理-<span style="font-size:14px;">长协交易创建</span>
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
                                    <label  >交易合同编号</label>
                                    <input  readonly="readonly" disabled type="text"  value="${entity.contractNo}" id="contractNo" name="contractNo" readonly  class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label  >签署日期</label>
                                    <input readonly="readonly" disabled type="text" value="${entity.signDate}"   name="signDate" id="signDate"       class="form-control datepicker"  >
                                </div>
                                <div class="form-group">
                                    <label  >采购方名称（甲方）</label>
                                    <input readonly="readonly" disabled id="ptUserno" value="${entity.ptUserno}"   name="ptUserno" type="text" class="form-control"  >
                                </div>

                            </div>
                            <div class="formRow">
                                    <div class="form-group">
                                        <label  >供应商名称（乙方）</label>
                                        <select readonly="readonly" disabled name="supplierid"  id="supplierid" class="form-control">
                                            <option value="">--请选择--</option>
                                            <c:forEach items="${rows}" var="e">
                                                <c:if test="${entity.supplierid==e.supplierid}">
                                                <option selected value="${e.supplierid}">${e.shortname}-${e.name}</option>
                                                </c:if>
                                                <c:if test="${entity.supplierid!=e.supplierid}">
                                                    <option   value="${e.supplierid}">${e.shortname}-${e.name}</option>
                                                </c:if>
                                            </c:forEach>


                                        </select>
                                    </div>
                                   <div class="form-group">

                                    <label  >运输方式</label>
                                    <select readonly="readonly" disabled required name="transporttype" id="transporttype" class="form-control">
                                          <option value="">--请选择--</option>
                                         <c:if test="${entity.transporttype==1}">
                                             <option selected value="1">火车</option>
                                             <option value="2">航空</option>
                                         </c:if>
                                        <c:if test="${entity.transporttype==2}">
                                            <option  value="1">火车</option>
                                            <option selected value="2">航空</option>
                                        </c:if>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label  >验收方式</label>
                                    <select  readonly="readonly" disabled name="checktype"  id="checktype" class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.checktype==1}">
                                            <option selected value="1">到场验收</option>
                                            <option value="2">非到场验收</option>
                                        </c:if>
                                        <c:if test="${entity.checktype==2}">
                                            <option  value="1">到场验收</option>
                                            <option selected value="2">非到场验收</option>
                                        </c:if>

                                    </select>
                                </div>
                            </div>
                        <div class="formRow">
                            <div class="form-group">
                                <label  >交货开始时间</label>
                                <input readonly value="${entity.deliverstartDate}" name="deliverstartDate" id="deliverstartDate" type="text"     class="form-control datepicker"  >
                            </div>
                            <div class="form-group">
                                <label  >交货截止时间</label>
                                <input  readonly  value="${entity.deliverendDate}" name="deliverendDate" id="deliverendDate" type="text"      class="form-control datepicker"  >
                            </div>

                        </div>


                </div>

            </div>
            <div class="panel panel-default">

                <div class="panel-body">
                    <table class="table table-hover font-table">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>
                                煤钟
                            </th>
                            <th>
                                采购数量（万吨）
                            </th>
                            <th>
                                热卡值
                            </th>

                            <th></th>
                        </tr>
                        </thead>
                        <tbody id="coalRow">
                        <c:forEach  items="${list}" var="e" varStatus="a">
                        <tr>
                            <td class='text-nowrap' scope='row'>
                                ${a.count}
                            <td>
                                <select  disabled readonly="readonly"  id='coaltype1' onchange="coalType1(this)"  style='width:120px' class='form-control' name='coaltype1' >
                                    <c:if test="${fn:split(e.coaltype,':')[0]=='WY'}">
                                        <option selected value='WY'>无烟煤</option>
                                        <option value='YM'>烟煤</option>
                                        <option value='HY'>褐煤</option>
                                    </c:if>
                                    <c:if test="${fn:split(e.coaltype,':')[0]=='YM'}">
                                        <option  value='WY'>无烟煤</option>
                                        <option selected value='YM'>烟煤</option>
                                        <option value='HY'>褐煤</option>
                                    </c:if>
                                    <c:if test="${fn:split(e.coaltype,':')[0]=='HY'}">
                                        <option  value='WY'>无烟煤</option>
                                        <option value='YM'>烟煤</option>
                                        <option selected value='HY'>褐煤</option>
                                    </c:if>

                                </select>
                                <select disabled readonly="readonly" style='width:120px' id='coaltype2'  class='form-control' name='coaltype2'>
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
                            </td>
                            <td>
                                <input readonly value="${e.purchasenum}" type='text' class='form-control' name='purchasenum'  >
                            </td>
                            <td>
                                <input readonly value="${e.calorificnum}" type='text' class='form-control'   name='calorificnum'>
                            </td>
                            <td>

                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>
            <div class="formRow">
                <div class="form-group">
                    <label  >合同附件</label>
                     文件名：${entity.contractfilename}
                </div>
            </div>
            <div class="formRow">

                <div class="form-group">
                    <label  >备注</label>
                    <textarea class="form-group" name="desc">
                        ${entity.remark}
                    </textarea>
                </div>
            </div>
            <div class="formRow" style="text-align: center;">
                <div class="form-group" >
                    <c:if test="${entity.status==1}">
                        <a  href="<%=basePath%>bondCtractManager/bondCtractSubmit?contractNo=${entity.contractNo}" id="submitBtn"  class="btn btn-primary" >提交</a>
                    </c:if>
                    <a  class="btn btn-primary"  href="<%=basePath%>bondCtractManager/loadAddBondCtractPage">返回</a>
                </div>
            </div>
        </div>

        </div>

    </div>

</div>

<script>






</script>

</body>
</html>

