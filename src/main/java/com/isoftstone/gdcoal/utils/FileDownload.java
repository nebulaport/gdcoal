package com.isoftstone.gdcoal.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

/**
 * Created by issuser on 2019/8/19.
 */

public class FileDownload {

    public static void dowLoad(HttpServletRequest request, HttpServletResponse response, String path){
        response.setContentType("application/x-msdownload");
        try {
            response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(path.substring(path.lastIndexOf("/")+1), "UTF-8"));

        OutputStream out = response.getOutputStream();
        InputStream in = new FileInputStream(path);
        byte [] buffer = new byte[1024];
        int len = 0;
        while((len = in.read(buffer)) != -1){
            out.write(buffer, 0, len);
        }
        in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}




