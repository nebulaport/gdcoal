<%--
  Created by IntelliJ IDEA.
  User: tupingping
  Date: 2019/8/15
  Time: 19:32
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

        h3 {
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
        //校验数字
        function checkType(obj) {
            var reg = /^(\-\+)?(([^0][0-9]+|0)\.([0-9]{1,2})$)|^(([^0][0-9]+|0)$)|^(([1-9]+)\.([0-9]{1,2})$)|^(([1-9]+)$)/;
            var alt = "<small class='help-block' style='color:#a94442' data-bv-validator='notEmpty'>必须纯数字</small>";
            if (!reg.test($(obj).val())) {
                $(obj).next("span").html(alt);
            } else {
                $(obj).next("span").html("");
            }
        }


        $(document).ready(function () {
            //日期控件格式控制
            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd',
                language: 'zh-CN',
                autoclose: 1,
                todayBtn: true,
                todayHighlight: 1,
                minView: 2// 不会再找时分秒界面
            });

            //校验
            $('#addTFultbtemplate').bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                }, fields: {
                    jhtimeEnd: {
                        validators: {
                            notEmpty: {
                                message: '报价截止日期不能为空'
                            }, trigger: 'change'
                        }
                    }, createuserdeptid: {
                        validators: {
                            notEmpty: {
                                message: '申请单位不能为空'
                            }
                        }
                    }, createuser: {
                        validators: {
                            notEmpty: {
                                message: '申请人不能为空'
                            }
                        }
                    }, signname: {
                        validators: {
                            notEmpty: {
                                message: '签发人不能为空'
                            }
                        }
                    }, createdate: {
                        validators: {
                            notEmpty: {
                                message: '创建日期不能为空'
                            }, trigger: 'change'
                        }
                    }, jhtime: {
                        validators: {
                            notEmpty: {
                                message: '交货时间不能为空'
                            }, trigger: 'change'
                        }
                    }, jhtime2: {
                        validators: {
                            notEmpty: {
                                message: '交货截止时间不能为空'
                            }, trigger: 'change'
                        }
                    }, coalclass: {
                        validators: {
                            notEmpty: {
                                message: '煤样不能为空'
                            }
                        }
                    }, coaltype: {
                        validators: {
                            notEmpty: {
                                message: '煤种不能为空'
                            }
                        }
                    }, qty: {
                        validators: {
                            notEmpty: {
                                message: '采购数量不能为空'
                            }
                        }
                    }, yunshuMode: {
                        validators: {
                            notEmpty: {
                                message: '运输方式不能为空'
                            }
                        }
                    }, jiaohuoMode: {
                        validators: {
                            notEmpty: {
                                message: '交货地点不能为空'
                            }
                        }
                    }, jiesuanMode: {
                        validators: {
                            notEmpty: {
                                message: '结算方式不能为空'
                            }
                        }
                    }, yanshouMode: {
                        validators: {
                            notEmpty: {
                                message: '验收方式不能为空'
                            }
                        }
                    }, maxlimitprice: {
                        validators: {
                            notEmpty: {
                                message: '最高限价不能为空'
                            }
                        }
                    }, minlimitprice: {
                        validators: {
                            notEmpty: {
                                message: '最低限价不能为空'
                            }
                        }
                    }, isquotebond: {
                        validators: {
                            notEmpty: {
                                message: '报价保证金缴纳不能为空'
                            }
                        }
                    }, isperformbond: {
                        validators: {
                            notEmpty: {
                                message: '履约保证金缴纳不能为空'
                            }
                        }
                    }, type1: {
                        validators: {
                            notEmpty: {
                                message: '收到基低位发热量不能为空'
                            }
                        }
                    }, type4: {
                        validators: {
                            notEmpty: {
                                message: '收到基全硫不能为空'
                            }
                        }
                    }, type2: {
                        validators: {
                            notEmpty: {
                                message: '全水分不能为空'
                            }
                        }
                    }, type6: {
                        validators: {
                            notEmpty: {
                                message: '收到基灰分不能为空'
                            }
                        }
                    }, type3: {
                        validators: {
                            notEmpty: {
                                message: '收到基挥发分(小）不能为空'
                            }
                        }
                    }, type32: {
                        validators: {
                            notEmpty: {
                                message: '收到基挥发分(大）不能为空'
                            }
                        }
                    }, kgj1: {
                        validators: {
                            notEmpty: {
                                message: '空干基水分不能为空'
                            }
                        }
                    }, kgj2: {
                        validators: {
                            notEmpty: {
                                message: '空干基全硫不能为空'
                            }
                        }
                    }, kgj3: {
                        validators: {
                            notEmpty: {
                                message: '空干基挥发分(小）不能为空'
                            }
                        }
                    }, kgj4: {
                        validators: {
                            notEmpty: {
                                message: '空干基挥发分(大）不能为空'
                            }
                        }
                    }, type11: {
                        validators: {
                            notEmpty: {
                                message: '干基高位发热量不能为空'
                            }
                        }
                    }, type14: {
                        validators: {
                            notEmpty: {
                                message: '干基全硫不能为空'
                            }
                        }
                    }, type323: {
                        validators: {
                            notEmpty: {
                                message: '干燥无灰基挥发分（小)不能为空'
                            }
                        }
                    }, type333: {
                        validators: {
                            notEmpty: {
                                message: '干燥无灰基挥发分（大)不能为空'
                            }
                        }
                    }, type8: {
                        validators: {
                            notEmpty: {
                                message: '粒度不能为空'
                            }
                        }
                    }, type5: {
                        validators: {
                            notEmpty: {
                                message: '灰熔点不能为空'
                            }
                        }
                    }, type7: {
                        validators: {
                            notEmpty: {
                                message: '哈氏可磨系数不能为空'
                            }
                        }
                    }
                }
            });

            //点击保存
            $('#saveCreatTFultbtemplate').click(function () {
                var flag = true;
                $("#qty,#maxlimitprice,#minlimitprice,#type1,#type4,#type2,#type6,#type3,#type32,#kgj1,#kgj2,#kgj3,#kgj4,#type11,#type14,#type323,#type333,#type8,#type5,#type7").each(function () {
                    checkType($(this));
                    var reg = /^(\-\+)?(([^0][0-9]+|0)\.([0-9]{1,2})$)|^(([^0][0-9]+|0)$)|^(([1-9]+)\.([0-9]{1,2})$)|^(([1-9]+)$)/;
                    if (!reg.test($(this).val())) {
                        flag = false;
                    }
                });



                // 开始校验
                $('#addTFultbtemplate').bootstrapValidator('validate');//提交验证
                if ($('#addTFultbtemplate').data('bootstrapValidator').isValid() && flag) {//获取验证结果，如果成功，执行下面代码
                    $("#status").val('0');
                    $("#addTFultbtemplate")[0].submit();
                }
            });

            //点击提交
            $('#submitCreatTFultbtemplate').click(function () {
                var flag = true;
                $("#qty,#maxlimitprice,#minlimitprice,#type1,#type4,#type2,#type6,#type3,#type32,#kgj1,#kgj2,#kgj3,#kgj4,#type11,#type14,#type323,#type333,#type8,#type5,#type7").each(function () {
                    checkType($(this));
                    var reg = /^(\-\+)?(([^0][0-9]+|0)\.([0-9]{1,2})$)|^(([^0][0-9]+|0)$)|^(([1-9]+)\.([0-9]{1,2})$)|^(([1-9]+)$)/;
                    if (!reg.test($(this).val())) {
                        flag = false;
                    }
                });

                //开始校验
                $('#addTFultbtemplate').bootstrapValidator('validate');//提交验证
                if ($('#addTFultbtemplate').data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    $("#status").val('1');
                    $("#addTFultbtemplate")[0].submit(); //必须注意；一定写下标，然后submit
                }
            });
        });
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
        <form class="form-inline" method="post" id="updateTFultbtemplate"
              action="<%=basePath%>updateTFultbtemplate">
            <input type="hidden" id="status" name="status">
            <div class="panel-body">
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle" style="background-color: #0166CD;width:70px;text-align: center;">
                        基本情况</h3>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>报价截止时间：</label>
                                    <input value="${entity.jhtimeEnd}" name="jhtimeEnd"
                                           id="jhtimeEnd" type="text"
                                           class="form-control datepicker">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>申请单位：</label>
                                    <input type="text" readonly="readonly" disabled id="createuserdeptid"
                                           name="createuserdeptid" value="${entity.createuserdeptid}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>单据编号：</label>
                                    <input type="text" readonly="readonly" disabled id="billnumber" name="billnumber"
                                           value="${entity.billnumber}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>申请人：</label>
                                    <input type="text" id="createuser" name="createuser"
                                           value="${entity.createuser}"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>签发人：</label>
                                    <input type="text" id="signname" name="signname"
                                           value="${entity.signname}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>申请日期：</label>
                                    <input readonly="readonly" disabled name="createdate" id="createdate" type="text"
                                           value="${entity.createdate}"
                                           class="form-control datepicker">
                                </div>
                                <div class="form-group">
                                    <label>交货时间：</label>
                                    <!--交货开始时间-->
                                    <input name="jhtime" id="jhtime" type="text"
                                           value="${entity.jhtime}"
                                           class="form-control datepicker">
                                    <label>至</label>
                                    <!--交货截止时间-->
                                    <input name="jhtime2" id="jhtime2" type="text"
                                           value="${entity.jhtime2}"
                                           class="form-control datepicker">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>煤种：</label>
                                </div>
                                <div class="form-group" id="coal">
                                    <select id='coalclass' onchange="changeCoal(this)"
                                            style='width:120px' class='form-control' name='coalclass'>
                                        <c:if test="${entity.coalclass=='WY'}">
                                            <option selected value='WY'>无烟煤</option>
                                            <option value='YM'>烟煤</option>
                                            <option value='HY'>褐煤</option>
                                        </c:if>
                                        <c:if test="${entity.coalclass=='YM'}">
                                            <option value='WY'>无烟煤</option>
                                            <option selected value='YM'>烟煤</option>
                                            <option value='HY'>褐煤</option>
                                        </c:if>
                                        <c:if test="${entity.coalclass=='HY'}">
                                            <option value='WY'>无烟煤</option>
                                            <option value='YM'>烟煤</option>
                                            <option selected value='HY'>褐煤</option>
                                        </c:if>
                                    </select>
                                    <select style='width:120px' id='coaltype'
                                            class='form-control' name='coaltype'>
                                        <c:if test="${entity.coaltype=='WY1'}">
                                            <option value="WY1" selected>无烟一号</option>
                                            <option value="WY2">无烟二号</option>
                                            <option value="WY3">无烟三号</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='WY2'}">
                                            <option value="WY1" >无烟一号</option>
                                            <option value="WY2" selected>无烟二号</option>
                                            <option value="WY3">无烟三号</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='WY3'}">
                                            <option value="WY1">无烟一号</option>
                                            <option value="WY2">无烟二号</option>
                                            <option value="WY3" selected>无烟三号</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='HY1'}">
                                            <option value="HY1" selected>褐煤一号</option>
                                            <option value="HY2" >褐煤二号</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='HY2'}">
                                            <option value="HY1">褐煤一号</option>
                                            <option value="HY2" selected>褐煤二号</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='PM'}">
                                            <option value="PM" selected>贫煤</option>
                                            <option value="PS">贫瘦煤</option>
                                            <option value="SM">瘦煤</option>
                                            <option value="JM">焦煤</option>
                                            <option value="QM">气煤</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='PS'}">
                                            <option value="PM" >贫煤</option>
                                            <option value="PS" selected>贫瘦煤</option>
                                            <option value="SM">瘦煤</option>
                                            <option value="JM">焦煤</option>
                                            <option value="QM">气煤</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='SM'}">
                                            <option value="PM" >贫煤</option>
                                            <option value="PS">贫瘦煤</option>
                                            <option value="SM" selected>瘦煤</option>
                                            <option value="JM">焦煤</option>
                                            <option value="QM">气煤</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='JM'}">
                                            <option value="PM" >贫煤</option>
                                            <option value="PS">贫瘦煤</option>
                                            <option value="SM">瘦煤</option>
                                            <option value="JM" selected>焦煤</option>
                                            <option value="QM">气煤</option>
                                        </c:if>
                                        <c:if test="${entity.coaltype=='QM'}">
                                            <option value="PM">贫煤</option>
                                            <option value="PS">贫瘦煤</option>
                                            <option value="SM">瘦煤</option>
                                            <option value="JM">焦煤</option>
                                            <option value="QM" selected>气煤</option>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>采购数量：</label>
                                    <input type="text" id="qty" name="qty"
                                           value="${entity.qty}"
                                           class="form-control">
                                    <label>（万吨）</label>
                                </div>
                                <div class="form-group">
                                    <label>运输方式：</label>
                                    <select name="yunshuMode" id="yunshuMode"
                                            class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.yunshuMode==1}">
                                            <option selected value="1">火车</option>
                                            <option value="2">航空</option>
                                        </c:if>
                                        <c:if test="${entity.yunshuMode==2}">
                                            <option value="1">火车</option>
                                            <option selected value="2">航空</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>交货地点：</label>
                                    <input type="text" id="jiaohuoMode" name="jiaohuoMode"
                                           value="${entity.jiaohuoMode}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>结算方式：</label>
                                    <select name="jiesuanMode" id="jiesuanMode"
                                            class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.jiesuanMode==1}">
                                            <option selected value="1">一票结算</option>
                                            <option value="2">分期付款</option>
                                        </c:if>
                                        <c:if test="${entity.jiesuanMode==2}">
                                            <option value="1">一票结算</option>
                                            <option selected value="2">分期付款</option>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>验收方式：</label>
                                    <select name="yanshouMode" id="yanshouMode"
                                            class="form-control">
                                        <option value="">--请选择--</option>
                                        <c:if test="${entity.yanshouMode==1}">
                                            <option selected value="1">到场验收</option>
                                            <option value="2">非到场验收</option>
                                        </c:if>
                                        <c:if test="${entity.yanshouMode==2}">
                                            <option value="1">到场验收</option>
                                            <option selected value="2">非到场验收</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>最高限价：</label>
                                    <input type="text" id="maxlimitprice"
                                           name="maxlimitprice" value="${entity.maxlimitprice}"
                                           class="form-control">
                                    <label>（元/卡.吨）</label>
                                </div>
                                <div class="form-group">
                                    <label>最低限价：</label>
                                    <input type="text" id="minlimitprice"
                                           name="minlimitprice" value="${entity.minlimitprice}"
                                           class="form-control">
                                    <label>（元/卡.吨）</label>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group" style="height: 40px">
                                    <label>最高限价说明：</label>
                                    <textarea class="form-group" name="maxremark"
                                              style="width: 300px;height: 40px;">${entity.maxremark}</textarea>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>结算付款方式：</label>
                                    <textarea class="form-group" readonly="readonly" disabled name="paymode"
                                              style="width: 300px;height: 40px;">${entity.paymode}</textarea>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>报价保证金缴纳：</label>
                                    <lable class="input">
                                        <c:if test="${entity.isquotebond==0}">
                                            不要求<input type="radio" name="isquotebond" selected value="0">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            要求<input type="radio" name="isquotebond" value="1">
                                        </c:if>
                                        <c:if test="${entity.isquotebond==1}">
                                            不要求<input type="radio" name="isquotebond"  value="0">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            要求<input type="radio" name="isquotebond" selected value="1">
                                        </c:if>
                                    </lable>
                                </div>
                                <div class="form-group">
                                    <label>履约保证金缴纳：</label>
                                    <lable class="input">
                                        <c:if test="${entity.isperformbond==0}">
                                            不要求<input type="radio" name="isperformbond" selected value="0">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            要求<input type="radio" name="isperformbond" value="1">
                                        </c:if>
                                        <c:if test="${entity.isperformbond==1}">
                                            不要求<input type="radio" name="isperformbond"  value="0">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            要求<input type="radio" name="isperformbond" selected value="1">
                                        </c:if>
                                    </lable>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle" style="background-color: #0166CD;width:70px;text-align: center;">
                        煤质要求</h3>
                    <div class="panel-body">
                        <h3 class="m">收到基基准</h3>
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>收到基低位发热量Qnet,ar>=：</label>
                                    <input type="text" id="type1" name="type1"
                                           value="${entity.type1}"
                                           class="form-control">
                                    <label>（KCal/kg）</label>
                                </div>
                                <div class="form-group">
                                    <label>收到基全硫St,ar>=：</label>
                                    <input type="text" id="type4" name="type4"
                                           value="${entity.type4}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>全水分M<=：</label>
                                    <input type="text" id="type2" name="type2"
                                           value="${entity.type2}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>收到基灰分Aar<=：</label>
                                    <input type="text" id="type6" name="type6"
                                           value="${entity.type6}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>收到基挥发分Var：</label>
                                    <input type="text" id="type3" name="type3"
                                           value="${entity.type3}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" id="type32" name="type32"
                                           value="${entity.type32}"
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
                                    <input type="text" id="kgj1" name="kgj1"
                                           value="${entity.kgj1}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>空干基全硫St，ad<=：</label>
                                    <input type="text" id="kgj2" name="kgj2"
                                           value="${entity.kgj2}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>空干基挥发分Vad：</label>
                                    <input type="text"  id="kgj3" name="kgj3"
                                           value="${entity.kgj3}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" id="kgj4" name="kgj4"
                                           value="${entity.kgj4}"
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
                                    <input type="text" id="type11" name="type11"
                                           value="${entity.type11}"
                                           class="form-control">
                                    <label>（KCal/kg）</label>
                                </div>
                                <div class="form-group">
                                    <label>干基全硫St,d<=：</label>
                                    <input type="text" id="type14" name="type14"
                                           value="${entity.type14}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>干燥无灰基挥发分：</label>
                                    <input type="text" id="type323" name="type323"
                                           value="${entity.type323}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text"  id="type333" name="type333"
                                           value="${entity.type333}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>
                            <div class="box">
                                <div class="formRow">
                                    <div class="form-group">
                                        <label>粒度（mm）<=：</label>
                                        <input type="text" id="type8" name="type8"
                                               value="${entity.type8}"
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>灰熔点ST（°C）>=：</label>
                                        <input type="text" id="type5" name="type5"
                                               value="${entity.type5}"
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>哈氏可磨系数（HGI）>=：</label>
                                        <input type="text" id="type7" name="type7"
                                               value="${entity.type7}"
                                               class="form-control">
                                    </div>
                                </div>
                                <div class="formRow">
                                    <div class="form-group">
                                        <label>备注：</label>
                                        <textarea class="form-group" id="remark"
                                                  name="remark"
                                                  style="width: 300px;height: 40px;">${entity.remark}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="formRow" style="text-align: center;">
                                <div class="form-group">
                                    <input type="button" id="saveCreatTFultbtemplate" class="btn btn-primary" value="保存">
                                    <input type="button" id="submitCreatTFultbtemplate" class="btn btn-primary" value="提交">
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



