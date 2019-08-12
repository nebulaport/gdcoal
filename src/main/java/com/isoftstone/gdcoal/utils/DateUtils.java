package com.isoftstone.gdcoal.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by issuser on 2019/8/9.
 */
public class DateUtils {
    public static String getCurrentTime(){
        SimpleDateFormat f=new SimpleDateFormat("yyyyMMddHHmmss");
        Date day=new Date();
       String res= f.format(day);
        return res;
    }
}
