<%--
  Created by IntelliJ IDEA.
  User: tupingping
  Date: 2019/8/13
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
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

        .font-table {
            color: #052963;
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
        var json = {
            "无烟煤": [{"WY1": "无烟一号"}, {"WY2": "无烟二号"}, {"WY3": "无烟三号"}],
            "褐煤": [{"HY1": "褐煤一号"}, {"HY2": "褐煤二号"}],
            "烟煤": [{"PM": "贫煤"}, {"PS": "贫瘦煤"}, {"SM": "瘦煤"}, {"JM": "焦煤"}, {"QM": "气煤"}]
        };

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
            $('addTFultbtemplate').bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                }, fields: {
                    operdate: {
                        validators: {
                            notEmpty: {
                                message: '报价截止日期不能为空'
                            }, trigger: 'change'
                        }
                    }, createuserdeptcode: {
                        validators: {
                            notEmpty: {
                                message: '申请单位不能为空'
                            }
                        }
                    }, templateid: {
                        validators: {
                            notEmpty: {
                                message: '申请单id不能为空'
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
                    }, jhtimeEnd: {
                        validators: {
                            notEmpty: {
                                message: '交货截止时间不能为空'
                            }, trigger: 'change'
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
                    }
                }
            });

            //点击保存
            $('saveTFultbtemplate').click(function () {
                var flag = true;
                $("#coalRow div ul input[name='purchasenum'],#coalRow div ul input[name='calorificnum']").each(function(){
                    checkType($(this));
                    var reg=/^(\-\+)?(([^0][0-9]+|0)\.([0-9]{1,2})$)|^(([^0][0-9]+|0)$)|^(([1-9]+)\.([0-9]{1,2})$)|^(([1-9]+)$)/;
                    if(!reg.test($(this).val())){
                        flag=false;
                    }
                });
                // /开始校验
                $('addTFultbtemplate').bootstrapValidator('validate');//提交验证
                if ($('addTFultbtemplate').data('bootstrapValidator').isValid() && flag) {//获取验证结果，如果成功，执行下面代码
                    $("#permitstatus").val('1');
                    $("#addBondctractForm")[0].submit();
                }
            });

            //点击提交
            $('submitTFultbtemplate').click(function () {
                var flag = true;
                $("#coalRow div ul input[name='purchasenum'],#coalRow div ul input[name='calorificnum']").each(function(){
                    checkType($(this));
                    var reg=/^(\-\+)?(([^0][0-9]+|0)\.([0-9]{1,2})$)|^(([^0][0-9]+|0)$)|^(([1-9]+)\.([0-9]{1,2})$)|^(([1-9]+)$)/;
                    if(!reg.test($(this).val())){
                        flag=false;
                    }
                });
                //开始校验
                $('addTFultbtemplate').bootstrapValidator('validate');//提交验证
                if ($('addTFultbtemplate').data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    $("#permitstatus").val('2');
                    $("#addBondctractForm")[0].submit(); //必须注意；一定写下标，然后submit
                }
            });
        });
        function coalType1(obj) {
            $(obj).next("select").get(0).options.length = 0;
            var type1 = $(obj).val();
            var coalArray = json[type1];
            for (var i = 0; i < coalArray.length; i++) {
                $.each(coalArray[i], function (name, value) {
                    // alert( "Name: " + name + ", Value: " + value );
                    var option = new Option(value, name);
                    $(obj).next("select").get(0).options[i] = option;
                });
            }
        }

        function addDetailRow() {
            var items = $("#coalRow").get();
            var div = "<div>"
                    +" <ul class='text-nowrap' scope='row'>"+(items.length+1)+"</ul>"
                    +"<ul>"
                    +" <select id='coaltype1' style='width:120px' class='form-control' name='coaltype1' onchange='coalType1(this)'>"
                    +"<option value='WY'>无烟煤</option>"
                    +" <option value='YM'>烟煤</option>"
                    +"<option value='HY'>褐煤</option>"
                    +"</select>"
                    +"<select style='width:120px' id='coaltype2'  class='form-control' name='coaltype2'>"
                    +" <option value='WY1'>无烟一号</option>"
                    +" <option value='WY2'>无烟二号</option>"
                    +"<option value='WY3'>无烟三号</option>"
                    +" </select>"
                    +" </ul>"
                    +"<ul>"
                    +" <input   type='text' required class='form-control'  id='purchasenum' onblur='checkType(this)' name='purchasenum' >"
                    +" <span></span></ul>"
                    +"<ul>"
                    +" <input   type='text' required class='form-control'   name='calorificnum' onblur='checkType(this)'>"
                    +"<span></span> </ul>"
                    +"</div>";
            $("#coalRow").append($(tr));

        }
        //删除煤质信息行
        function deleteRow(obj){
            $(obj).parent().parent().remove();
            $("#coalRow").find("tr").each(function(i){//each即找到的元素，每一个都执行该方法
                $(this).find("td:first").html(i+1);
            });
        }

        function checkType(obj){
            var reg=/^(\-\+)?(([^0][0-9]+|0)\.([0-9]{1,2})$)|^(([^0][0-9]+|0)$)|^(([1-9]+)\.([0-9]{1,2})$)|^(([1-9]+)$)/;
            var alt="<small class='help-block' style='color:#a94442' data-bv-validator='notEmpty'>必须纯数字</small>";
            if(!reg.test($(obj).val())){
                $(obj).next("span").html(alt);
            }else{
                $(obj).next("span").html("");
            }
        }
    </script>
</head>
<body>
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
              action="<%=basePath%>tFultbtemplateManager/addTFultbtemplateInfo">
            <input type="hidden" id="permitstatus" name="permitstatus">
            <div class="panel-body">
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle" style = "background-color: #0166CD;width:70px;text-align: center;">基本情况</h3>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div class="formRow">
                                <div class="form-group">
                                    <label>报价截止时间：</label>
                                    <input required name="operdate" id="operdate" type="text"
                                           class="form-control datepicker">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>申请单位：</label>
                                    <input type="text" required id="createuserdeptcode" name="createuserdeptcode"
                                           value="${code}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>单据编号：</label>
                                    <input type="text" id="templateid" name="templateid" value="${code}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>申请人：</label>
                                    <input type="text" required id="createuser" name="createuser" value="${code}"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>签发人：</label>
                                    <input type="text" required id="signname" name="signname" value="${code}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>申请日期：</label>
                                    <input required name="createdate" id="createdate" type="text"
                                           class="form-control datepicker">
                                </div>
                                <div class="form-group">
                                    <label>交货时间：</label>
                                    <!--交货开始时间-->
                                    <input required name="jhtime" id="jhtime" type="text"
                                           class="form-control datepicker">
                                    <label>至</label>
                                    <!--交货截止时间-->
                                    <input required name="jhtimeEnd" id="jhtimeEnd" type="text"
                                           class="form-control datepicker">
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>煤种：</label>
                                </div>
                                <div class="form-group" name = "coalRow" id = "coalRow">

                                </div>
                                <div class="form-group">
                                    <label>采购数量：</label>
                                    <input type="text" required id="qty" name="qty" value="${code}"
                                           class="form-control">
                                    <label>（万吨）</label>
                                </div>
                                <div class="form-group">
                                    <label>运输方式：</label>
                                    <select required name="yunshuMode" id="yunshuMode" class="form-control">
                                        <option value="">--请选择--</option>
                                        <option value="1">火车</option>
                                        <option value="2">航空</option>
                                    </select>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>交货地点：</label>
                                    <input type="text" required id="jiaohuoMode" name="jiaohuoMode" value="${code}"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>结算方式：</label>
                                    <select required name="jiesuanMode" id="jiesuanMode" class="form-control">
                                        <option value="">--请选择--</option>
                                        <option value="1">现金</option>
                                        <option value="2">电子转账</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>验收方式：</label>
                                    <select required name="yanshouMode" id="yanshouMode" class="form-control">
                                        <option value="">--请选择--</option>
                                        <option value="1">到场验收</option>
                                        <option value="2">非到场验收</option>
                                    </select>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>最高限价：</label>
                                    <input type="text" id="type7" name="type7" value="${code}"
                                           class="form-control">
                                    <label>（元/卡.吨）</label>
                                </div>
                                <div class="form-group">
                                    <label>最低限价：</label>
                                    <!--TFULTBPURCHASINGAPPLYDETAIL表中QCALMIN属性-->
                                    <input type="text" id="type8" name="type8" value="${code}"
                                           class="form-control">
                                    <label>（元/卡.吨）</label>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group" style="height: 40px">
                                    <label>限价说明：</label>
                                    <textarea class="form-group" name="maxremark" style = "width: 300px;height: 40px;"></textarea>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>结算付款方式：</label>
                                    <textarea class="form-group" name="billnumber" style = "width: 300px;height: 40px;"></textarea>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>报价保证金缴纳：</label>
                                    <lable class="input">
                                        不要求<input type="radio" name="notrequired" value="${code}">
                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                        要求<input type="radio" name="required" value="${code}">
                                        <input type="text" id="requiredbj" name="requiredbj" value="${code}"
                                               class="form-control">
                                    </lable>
                                    <label>元/吨</label>
                                </div>
                                <div class="form-group">
                                    <label>履约保证金缴纳：</label>
                                    <lable class="input">
                                        不要求<input type="radio" name="notrequired1" value="${code}">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        要求<input type="radio" name="required1" value="${code}">
                                        <input type="text" id="requiredly" name="requiredly" value="${code}"
                                               class="form-control">
                                    </lable>
                                    <label>元/吨</label>
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
                                    <input type="text" id="type1" name="type1" value="${code}"
                                           class="form-control">
                                    <label>（KCal/kg）</label>
                                </div>
                                <div class="form-group">
                                    <label>收到基全硫St,ar>=：</label>
                                    <input type="text" id="type2" name="type2" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>全水分M<=：</label>
                                    <input type="text" id="type3" name="type3" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>
                            <div class="formRow">
                                <div class="form-group">
                                    <label>收到基灰分Aar<=：</label>
                                    <input type="text" id="type4" name="type4" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>收到基挥发分Var：</label>
                                    <input type="text" id="type5" name="type5" value="${code}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" id="type6" name="type6" value="${code}"
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
                                    <input type="text" id="kgj1" name="kgj1" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>空干基全硫St，ad<=：</label>
                                    <input type="text" id="kgj2" name="kgj2" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>空干基挥发分Vad：</label>
                                    <input type="text" id="kgj3" name="kgj3" value="${code}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" id="kgj4" name="kgj4" value="${code}"
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
                                    <input type="text" id="type11" name="type11" value="${code}"
                                           class="form-control">
                                    <label>（KCal/kg）</label>
                                </div>
                                <div class="form-group">
                                    <label>干基全硫St,d<=：</label>
                                    <input type="text" id="type12" name="type12" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                                <div class="form-group">
                                    <label>干燥无灰基挥发分：</label>
                                    <input type="text" id="type14" name="type14" value="${code}"
                                           class="form-control">
                                    <label>（%）至</label>
                                    <input type="text" id="type16" name="type16" value="${code}"
                                           class="form-control">
                                    <label>（%）</label>
                                </div>
                            </div>
                            <div class="box">
                                <div class="formRow">
                                    <div class="form-group">
                                        <label>粒度（mm）<=：</label>
                                        <input type="text" id="type323" name="type323" value="${code}"
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>灰熔点ST（°C）>=：</label>
                                        <input type="text" id="type333" name="type333" value="${code}"
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>哈式可磨系数（HGI）>=：</label>
                                        <input type="text" id="type32" name="type32" value="${code}"
                                               class="form-control">
                                    </div>
                                </div>
                                <div class="formRow">
                                    <div class="form-group">
                                        <label>备注：</label>
                                        <textarea class="form-group" name="remark" style = "width: 300px;height: 40px;"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="formRow" style="text-align: center;">
                                <div class="form-group">
                                    <input type="button" id="saveTFultbtemplate" class="btn btn-primary" value="保存">
                                    <input type="button" id="submitTFultbtemplate" class="btn btn-primary"
                                           value="提交">
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
