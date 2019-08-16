package com.isoftstone.gdcoal.entity;

import com.isoftstone.gdcoal.framework.entity.BaseEntity;


import java.math.BigDecimal;
import java.util.Date;

public class TFultbtemplateEntity extends BaseEntity {
    private String jhtimeEnd;//报价截止时间
    private String createuserdeptid;// 申请单位
    private String billnumber;// 单据编号
    private String createuser;// 申请人
    private String signname;// 签发人
    private String createdate;//申请日期
    private String jhtime;//交货开始时间
    private String jhtime2;// 交货截止时间
    private String coalclass;//煤样
    private String coaltype;// 煤种
    private BigDecimal qty;// 采购数量
    private String yunshuMode;//运输方式
    private String jiaohuoMode;// 交货地点
    private String jiesuanMode;// 结算方式
    private String yanshouMode;// 验收方式
    private String maxlimitprice;//最高限价
    private String minlimitprice;//  最低限价
    private String maxremark;// 最高限价说明
    private String paymode;//结算付款方式
    private String isquotebond;// 报价保证金缴纳（0不要求，1要求）
    private String isperformbond;// 履约保证金缴纳（0不要求，1要求）
    private String type1;// 收到基低位发热量
    private String type4;// 收到基全硫
    private String type2;// 全水分
    private String type6;// 收到基灰分
    private String type3;//收到基挥发分(小）
    private String type32;//收到基挥发分(大）
    private String kgj1;// 空干基水分
    private String kgj2;//空干基全硫
    private String kgj3;// 空干基挥发分(小）
    private String kgj4; // 空干基挥发分(大）
    private String type11;// 干基高位发热量
    private String type14;//  干基全硫
    private String type323;//  干燥无灰基挥发分（小)
    private String type333;//  干燥无灰基挥发分（大)
    private String type8;// 粒度
    private String type5;// 灰熔点
    private String type7;// 哈氏可磨系数
    private String remark;//备注
    private String status;//状态

    private String templateid;

    private String operdate;

    private Long autoid;

    private String type12;

    private String type16;

    private String operuser;

    private String createuserid;

    private String createuserdeptcode;

    private String permitstatus;

    private String datafrom;

    private String datafromname;

    private String writername;

    private String writeraccount;

    private String writerdepartid;

    private String writerdepartname;

    private String writedate;

    private BigDecimal qtyEnd;

    private String signaccount;

    private String createbyah;

    private String isFb;

    private String source;

    private String type;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getIsperformbond() {
        return isperformbond;
    }

    public void setIsperformbond(String isperformbond) {
        this.isperformbond = isperformbond;
    }

    public String getIsquotebond() {
        return isquotebond;
    }

    public void setIsquotebond(String isquotebond) {
        this.isquotebond = isquotebond;
    }

    public String getPaymode() {
        return paymode;
    }

    public void setPaymode(String paymode) {
        this.paymode = paymode;
    }

    public String getMaxlimitprice() {
        return maxlimitprice;
    }

    public void setMaxlimitprice(String maxlimitprice) {
        this.maxlimitprice = maxlimitprice;
    }

    public String getMinlimitprice() {
        return minlimitprice;
    }

    public void setMinlimitprice(String minlimitprice) {
        this.minlimitprice = minlimitprice;
    }

    public String getTemplateid() {
        return templateid;
    }

    public void setTemplateid(String templateid) {
        this.templateid = templateid;
    }

    public String getOperdate() {
        return operdate;
    }

    public void setOperdate(String operdate) {
        this.operdate = operdate;
    }

    public Long getAutoid() {
        return autoid;
    }

    public void setAutoid(Long autoid) {
        this.autoid = autoid;
    }

    public String getOperuser() {
        return operuser;
    }

    public void setOperuser(String operuser) {
        this.operuser = operuser;
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getCreateuserid() {
        return createuserid;
    }

    public void setCreateuserid(String createuserid) {
        this.createuserid = createuserid;
    }

    public String getCreateuserdeptid() {
        return createuserdeptid;
    }

    public void setCreateuserdeptid(String createuserdeptid) {
        this.createuserdeptid = createuserdeptid;
    }

    public String getCreateuserdeptcode() {
        return createuserdeptcode;
    }

    public void setCreateuserdeptcode(String createuserdeptcode) {
        this.createuserdeptcode = createuserdeptcode;
    }

    public String getPermitstatus() {
        return permitstatus;
    }

    public void setPermitstatus(String permitstatus) {
        this.permitstatus = permitstatus;
    }

    public String getBillnumber() {
        return billnumber;
    }

    public void setBillnumber(String billnumber) {
        this.billnumber = billnumber;
    }

    public String getDatafrom() {
        return datafrom;
    }

    public void setDatafrom(String datafrom) {
        this.datafrom = datafrom;
    }

    public String getDatafromname() {
        return datafromname;
    }

    public void setDatafromname(String datafromname) {
        this.datafromname = datafromname;
    }

    public String getWritername() {
        return writername;
    }

    public void setWritername(String writername) {
        this.writername = writername;
    }

    public String getWriteraccount() {
        return writeraccount;
    }

    public void setWriteraccount(String writeraccount) {
        this.writeraccount = writeraccount;
    }

    public String getWriterdepartid() {
        return writerdepartid;
    }

    public void setWriterdepartid(String writerdepartid) {
        this.writerdepartid = writerdepartid;
    }

    public String getWriterdepartname() {
        return writerdepartname;
    }

    public void setWriterdepartname(String writerdepartname) {
        this.writerdepartname = writerdepartname;
    }

    public String getWritedate() {
        return writedate;
    }

    public void setWritedate(String writedate) {
        this.writedate = writedate;
    }

    public String getJhtime() {
        return jhtime;
    }

    public void setJhtime(String jhtime) {
        this.jhtime = jhtime;
    }

    public String getJhtimeEnd() {
        return jhtimeEnd;
    }

    public void setJhtimeEnd(String jhtimeEnd) {
        this.jhtimeEnd = jhtimeEnd;
    }

    public String getCoaltype() {
        return coaltype;
    }

    public void setCoaltype(String coaltype) {
        this.coaltype = coaltype;
    }

    public BigDecimal getQty() {
        return qty;
    }

    public void setQty(BigDecimal qty) {
        this.qty = qty;
    }

    public BigDecimal getQtyEnd() {
        return qtyEnd;
    }

    public void setQtyEnd(BigDecimal qtyEnd) {
        this.qtyEnd = qtyEnd;
    }

    public String getYunshuMode() {
        return yunshuMode;
    }

    public void setYunshuMode(String yunshuMode) {
        this.yunshuMode = yunshuMode;
    }

    public String getJiaohuoMode() {
        return jiaohuoMode;
    }

    public void setJiaohuoMode(String jiaohuoMode) {
        this.jiaohuoMode = jiaohuoMode;
    }

    public String getYanshouMode() {
        return yanshouMode;
    }

    public void setYanshouMode(String yanshouMode) {
        this.yanshouMode = yanshouMode;
    }

    public String getJiesuanMode() {
        return jiesuanMode;
    }

    public void setJiesuanMode(String jiesuanMode) {
        this.jiesuanMode = jiesuanMode;
    }

    public String getType1() {
        return type1;
    }

    public void setType1(String type1) {
        this.type1 = type1;
    }

    public String getType2() {
        return type2;
    }

    public void setType2(String type2) {
        this.type2 = type2;
    }

    public String getType3() {
        return type3;
    }

    public void setType3(String type3) {
        this.type3 = type3;
    }

    public String getType4() {
        return type4;
    }

    public void setType4(String type4) {
        this.type4 = type4;
    }

    public String getType5() {
        return type5;
    }

    public void setType5(String type5) {
        this.type5 = type5;
    }

    public String getType6() {
        return type6;
    }

    public void setType6(String type6) {
        this.type6 = type6;
    }

    public String getType7() {
        return type7;
    }

    public void setType7(String type7) {
        this.type7 = type7;
    }

    public String getType8() {
        return type8;
    }

    public void setType8(String type8) {
        this.type8 = type8;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getSignname() {
        return signname;
    }

    public void setSignname(String signname) {
        this.signname = signname;
    }

    public String getSignaccount() {
        return signaccount;
    }

    public void setSignaccount(String signaccount) {
        this.signaccount = signaccount;
    }

    public String getJhtime2() {
        return jhtime2;
    }

    public void setJhtime2(String jhtime2) {
        this.jhtime2 = jhtime2;
    }

    public String getType32() {
        return type32;
    }

    public void setType32(String type32) {
        this.type32 = type32;
    }

    public String getCreatebyah() {
        return createbyah;
    }

    public void setCreatebyah(String createbyah) {
        this.createbyah = createbyah;
    }

    public String getIsFb() {
        return isFb;
    }

    public void setIsFb(String isFb) {
        this.isFb = isFb;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType323() {
        return type323;
    }

    public void setType323(String type323) {
        this.type323 = type323;
    }

    public String getType333() {
        return type333;
    }

    public void setType333(String type333) {
        this.type333 = type333;
    }

    public String getMaxremark() {
        return maxremark;
    }

    public void setMaxremark(String maxremark) {
        this.maxremark = maxremark;
    }

    public String getType11() {
        return type11;
    }

    public void setType11(String type11) {
        this.type11 = type11;
    }

    public String getType12() {
        return type12;
    }

    public void setType12(String type12) {
        this.type12 = type12;
    }

    public String getType14() {
        return type14;
    }

    public void setType14(String type14) {
        this.type14 = type14;
    }

    public String getType16() {
        return type16;
    }

    public void setType16(String type16) {
        this.type16 = type16;
    }

    public String getCoalclass() {
        return coalclass;
    }

    public void setCoalclass(String coalclass) {
        this.coalclass = coalclass;
    }

    public String getKgj1() {
        return kgj1;
    }

    public void setKgj1(String kgj1) {
        this.kgj1 = kgj1;
    }

    public String getKgj2() {
        return kgj2;
    }

    public void setKgj2(String kgj2) {
        this.kgj2 = kgj2;
    }

    public String getKgj3() {
        return kgj3;
    }

    public void setKgj3(String kgj3) {
        this.kgj3 = kgj3;
    }

    public String getKgj4() {
        return kgj4;
    }

    public void setKgj4(String kgj4) {
        this.kgj4 = kgj4;
    }
}