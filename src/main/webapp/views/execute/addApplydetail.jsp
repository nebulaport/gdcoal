<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: NebulaPort
  Date: 2019/8/14
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>采购执行填报</title>
    <%@include file="/include.jsp" %>
    <style type="text/css">
        .formRow {
            padding-left: 50px;
            padding-top: 20px;
            color: #052963;
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
            padding: 30px;
            color: #052963
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
    <script type="text/javascript">


        $(document).ready(function () {

            //$('#addBondctractForm').bootstrapValidator();
            //校验表单
            $('#addApplydetailForm').bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                }, fields: {
                    supplierid: {
                        trigger: 'change',
                        validators: {
                            notEmpty: {
                                message: '供应商(乙方)不能为空'
                            }
                        }
                    },
                    linktel: {
                        trigger: 'change',
                        validators: {
                            notEmpty: {
                                message: '联系电话不能为空'
                            },
                            regexp: {//正则验证，纯数字
                                regexp: /^[0-9]*$/,
                                message: '请输入正确的联系电话'
                            }
                        }
                    },
                    qty: {
                        trigger: 'change',
                        validators: {
                            notEmpty: {
                                message: '采购数量不能为空'
                            },
                            regexp: {//正则验证，正实数
                                regexp: /^(?:[1-9]\d*|0)(?:\.\d+)?$/,
                                message: '请输入正确的采购数量'
                            }
                        }
                    },
                    zbqty: {
                        trigger: 'change',
                        validators: {
                            notEmpty: {
                                message: '中标数量不能为空'
                            },
                            regexp: {//正则验证，正实数
                                regexp: /^(?:[1-9]\d*|0)(?:\.\d+)?$/,
                                message: '请输入正确的中标数量'
                            }
                        }
                    },
                    zbprice: {
                        trigger: 'change',
                        validators: {
                            notEmpty: {
                                message: '中标价格不能为空'
                            },
                            regexp: {//正则验证，正实数
                                regexp: /^(?:[1-9]\d*|0)(?:\.\d+)?$/,
                                message: '请输入正确的中标价格'
                            }
                        }
                    }



                }
            });

            //点击保存
            $("#saveBtn").click(function () {
                //开始校验
                $("#addApplydetailForm").bootstrapValidator('validate');//提交验证
                if ($("#addApplydetailForm").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    $("#status").val('1');

                    var supplierid=$("#supplierid").val();
                    $.ajax({
                        url:"<%=basePath%>execute/saveApplydetailValidate",
                        data:{supplierid:supplierid},
                        dataType:"json",
                        type:"post",
                        success:function(res){
                            if(res){
                                $("#addApplydetailForm")[0].submit();
                            }else{
                                alert("该供应商已经报价!");
                            }
                        },error:function(){
                            alert("响应失败！");
                        }
                    });
                }
            });
            //点击提交
            $("#submitBtn").click(function () {
                //开始校验
                $("#addApplydetailForm").bootstrapValidator('validate');//提交验证
                if ($("#addApplydetailForm").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                     $("#status").val('2');

                    // $("#addApplydetailForm")[0].submit();//必须注意；一定写下标，然后submit
                   //判重
                    var supplierid=$("#supplierid").val();

                    $.ajax({
                        url:"<%=basePath%>execute/saveApplydetailValidate",
                        data:{supplierid:supplierid},
                        dataType:"json",
                        type:"post",
                        success:function(res){
                            if(res){
                                $("#addApplydetailForm")[0].submit();
                            }else{
                                alert("该供应商已经报价!");
                            }
                        },error:function(){
                            alert("响应失败！");
                        }
                    });
                }
            });

        });




    </script>
</head>
<body>


<!--内容部分-->
<div class="panel panel-default">

    <!--内容部分-->
    <div class="panel panel-default">
        <div class="panel-heading" style="background-color:#05298F">
            <h2 class="panel-title" style="font-weight:bold; color:#fff;">
                会员中心-<span style="font-size:14px;">采购执行填报</span>
            </h2>
        </div>
        <form class="form-inline"  id="addApplydetailForm"
              action="<%=basePath%>execute/addApplydetailInfo" >
            <input type="hidden" id="status" name="status">
            <div class="panel-body">
                <div class="panel panel-default">
                    <h3 class="panel-title panelTitle">基本信息</h3>
                    <div class="panel-body">
                        <div class="table-responsive">


                            <div class="form-group">
                                <label for="applydetailid">供应商报价编号</label>
                                <input type="text" readonly value="${applydetailid}"
                                       name="applydetailid"
                                       id="applydetailid"
                                       class="form-control">

                            </div>
                            <div class="form-group">
                                <label for="purchapplyid">采购单编号</label>
                                <input type="text" id="purchapplyid" name="purchapplyid" readonly
                                       value="${purchapply.purchapplyid}" class="form-control">

                            </div>



                            <div class="form-group">
                                <label for="zbqty">中标数量</label>
                                <input id="zbqty"  name="zbqty"  type="text"
                                       class="form-control">

                            </div>
                            <div class="form-group">
                                <label for="zbprice">中标价格</label>
                                <input id="zbprice"  name="zbprice"  type="text"
                                       class="form-control">

                            </div>
                            <div class="form-group">
                                <label for="qty">采购数量（万吨）</label>
                                <input id="qty" required name="qty" value="${purchapply.qty}" type="text"
                                       class="form-control">

                            </div>


                            <div class="form-group">
                                <label for="linktel">联系电话</label>
                                <input id="linktel" required name="linktel" type="text"
                                       class="form-control">
                            </div>


                        </div>
                        <div class="formRow">
                            <div class="form-group">
                                <label for="supplierid">供应商名称（乙方）</label>

                                <select required name="supplierid" id="supplierid" class="form-control" >
                                    <option value="">--请选择--</option>
                                    <c:forEach items="${supplier}" var="e">
                                        <option value="${e.supplierid}">${e.shortname}-${e.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>

                        <div class="formRow">
                            <div class="form-group">
                                <label for="remark">备注</label>
                                <textarea class="form-control" rows="5" cols="40" name="desc" id="remark"></textarea>
                            </div>
                        </div>


                    </div>

                </div>

                <div class="formRow" style="text-align: center;">
                    <div class="form-group">
                        <input type="button" id="saveBtn" class="btn btn-primary" value="保存">
                        <input type="button" id="submitBtn" class="btn btn-primary" value="提交">
                    </div>
                </div>
            </div>


        </form>
    </div>

</div>


</body>
</html>
