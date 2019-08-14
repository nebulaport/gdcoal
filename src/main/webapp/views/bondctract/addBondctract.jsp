<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>长协交易创建</title>
    <%@include file="/include.jsp"%>
    <style type="text/css">
        .formRow{padding-left:50px;padding-top:20px;}
        .formRow .form-group label{color:#052963;}
        .panelTitle{color:#052963;font-weight:bold;font-family:"黑体"}
        .form-group{padding-left:10px;}
        .font-table{color:#052963}
    </style>
    <script type="text/javascript">
        var json={"WY":[{"WY1":"无烟一号"},{"WY2":"无烟二号"},{"WY3":"无烟三号"}],
            "HY":[{"HY1":"褐煤一号"},{"HY2":"褐煤二号"}], "YM":[{"PM":"贫煤"},{"PS":"贫瘦煤"},
                {"SM":"瘦煤"},{"JM":"焦煤"},{"QM":"气煤"}]
        };


        $(document).ready(function() {
            //日期控件格式控制
            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd',
                language: 'zh-CN',
                autoclose: 1,
                todayBtn:true,
                todayHighlight:1,
                minView:2// 不会再找时分秒界面
            });

            //$('#addBondctractForm').bootstrapValidator();
            //校验表单
            $('#addBondctractForm').bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                }, fields:{
                    signDate:{
                        validators: {
                            notEmpty: {
                                message: '签署日期不能为空'
                            }, trigger: 'change'


                        }
                    },
                    supplierid:{
                        validators: {
                            notEmpty: {
                                message: '供应商(乙方)不能为空'
                            }
                        }
                    },
                    ptUserno:{
                        validators: {
                            notEmpty: {
                                message: '采购方名称(甲方)不能为空'
                            }
                        }
                    },
                    transporttype:{
                        validators: {
                            notEmpty: {
                                message: '运输费方式不能为空'
                            }
                        }
                    },
                    checktype:{
                        validators: {
                            notEmpty: {
                                message: '运输费方式不能为空'
                            }
                        }
                    },
                    deliverstartDate:{
                        validators: {
                            notEmpty: {
                                message: '交货起始时间不能为空'
                            }, trigger: 'change'
                        }
                    },deliverendDate:{
                        trigger: 'change',
                        validators: {
                            notEmpty: {
                                message: '交货截止时间不能为空'
                            }
                        }
                    }
                }

            });
            //点击保存
            $("#saveBtn").click(function(){
                //开始校验
                $("#addBondctractForm").bootstrapValidator('validate');//提交验证
                if ($("#addBondctractForm").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    $("#status").val('1');
                    $("#addBondctractForm")[0].submit();
                }
            });
            //点击提交
            $("#submitBtn").click(function(){
                //开始校验
                $("#addBondctractForm").bootstrapValidator('validate');//提交验证
                if ($("#addBondctractForm").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    $("#status").val('2');
                    $("#addBondctractForm")[0].submit();//必须注意；一定写下标，然后submit
                }
            });



        });

       function  coalType1(obj){
           $(obj).next("select").get(0).options.length=0;
           var type1=$(obj).val();
           var coalArray=json[type1];
           for(var i=0;i<coalArray.length;i++){
               $.each( coalArray[i], function(name, value){
                  // alert( "Name: " + name + ", Value: " + value );
                   var option=new Option(value,name);
                  $(obj).next("select").get(0).options[i]=option;
               });
           }
       }

       //点击添加，添加煤质信息行
       function addDetailRow(){
           var items= $("#coalRow tr").get();
           var tr="<tr>"
                   +" <td class='text-nowrap' scope='row'>"+(items.length+1)+"</td>"
                   +"<td>"
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
                   +" </td>"
                   +"<td>"
                   +" <input   type='text' class='form-control' name='purchasenum'  >"
                   +" </td>"
                   +"<td>"
                   +" <input   type='text' class='form-control'   name='calorificnum'>"
                   +" </td>"
                   +" <td>"
                   +" <a   class='btn btn-primary'>删除</a>"
                   +"</td>"
                   +"</tr>";
                   $("#coalRow").append($(tr));

       }

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
        <form class="form-inline"  method="post" enctype="multipart/form-data" id="addBondctractForm" action="<%=basePath%>bondCtractManager/addbondCtractInfo">
            <input type="hidden" id="status" name="status">
            <div class="panel-body">
            <div class="panel panel-default">
                <h3 class="panel-title panelTitle">基本信息</h3>
                <div class="panel-body">
                    <div class="table-responsive">

                            <div class="formRow">
                                <div class="form-group">
                                    <label  >交易合同编号</label>
                                    <input type="text" id="contractNo" name="contractNo" readonly value="${code}" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label  >签署日期</label>
                                    <input type="text"  required name="signDate" id="signDate"       class="form-control datepicker"  >
                                </div>
                                <div class="form-group">
                                    <label  >采购方名称（甲方）</label>
                                    <input id="ptUserno" required name="ptUserno" type="text" class="form-control"  >
                                </div>

                            </div>
                            <div class="formRow">
                                    <div class="form-group">
                                        <label  >供应商名称（乙方）</label>
                                        <select required name="supplierid"  id="supplierid" class="form-control">
                                            <option value="">--请选择--</option>
                                            <c:forEach items="${rows}" var="e">
                                                <option value="${e.supplierid}">${e.shortname}-${e.name}</option>
                                            </c:forEach>


                                        </select>
                                    </div>
                                   <div class="form-group">

                                    <label  >运输方式</label>
                                    <select required name="transporttype" id="transporttype" class="form-control">
                                          <option value="">--请选择--</option>
                                          <option value="1">火车</option>
                                         <option value="2">航空</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label  >验收方式</label>
                                    <select required name="checktype"  id="checktype" class="form-control">
                                        <option value="">--请选择--</option>
                                        <option value="1">到场验收</option>
                                        <option value="2">非到场验收</option>
                                    </select>
                                </div>
                            </div>
                        <div class="formRow">
                            <div class="form-group">
                                <label  >交货开始时间</label>
                                <input required name="deliverstartDate" id="deliverstartDate" type="text"     class="form-control datepicker"  >
                            </div>
                            <div class="form-group">
                                <label  >交货截止时间</label>
                                <input required name="deliverendDate" id="deliverendDate" type="text"      class="form-control datepicker"  >
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

                            <th><a class="btn btn-primary" href="javascript:void(0)" onclick="addDetailRow()">添加</a></th>
                        </tr>
                        </thead>
                        <tbody id="coalRow">


                        </tbody>
                    </table>
                </div>

            </div>
            <div class="formRow">
                <div class="form-group">
                    <label  >合同附件</label>
                    <input type="file" name="bondctractFile" id="bondctractFile" class="form-control" >
                </div>
            </div>
            <div class="formRow">

                <div class="form-group">
                    <label  >备注</label>
                    <textarea class="form-group" name="desc">
                    </textarea>
                </div>
            </div>
            <div class="formRow" style="text-align: center;">
                <div class="form-group" >
                    <input type="button" id="saveBtn"   class="btn btn-primary" value="保存">
                    <input type="button" id="submitBtn"  class="btn btn-primary" value="提交">
                </div>
            </div>
        </div>

        </div>
        </form>
    </div>

</div>

<script>






</script>

</body>
</html>

