package com.isoftstone.gdcoal.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.isoftstone.gdcoal.service.PtMenuService;
import com.isoftstone.gdcoal.shiro.ShiroUtils;
import com.isoftstone.gdcoal.utils.Node;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by issuser on 2019/8/20.
 */
@Controller
public class PtSysLoginController {

        @Autowired
        private Producer producer;
        @Autowired
        private PtMenuService ptMenuService;
        @RequestMapping("/user/captcha.jpg")
        public void captcha(HttpServletResponse response)throws IOException {
            response.setHeader("Cache-Control", "no-store, no-cache");
            response.setContentType("image/jpeg");

            //生成文字验证码
            String text = producer.createText();
            //生成图片验证码
            BufferedImage image = producer.createImage(text);
            //保存到shiro session
            ShiroUtils.setSessionAttribute(Constants.KAPTCHA_SESSION_KEY, text);

            ServletOutputStream out = response.getOutputStream();
            ImageIO.write(image, "jpg", out);
        }

        /**
         * 登录
         */
        @RequestMapping(value = "/user/login", method = RequestMethod.POST)
        public String login(String username, String password, String captcha, Model model, HttpServletRequest req) {
            String kaptcha ="";
            System.out.println(username+">>>>>"+password);

            try{
                kaptcha=ShiroUtils.getKaptcha(Constants.KAPTCHA_SESSION_KEY);
                System.out.println(captcha+">>>"+kaptcha);
                if(!captcha.equalsIgnoreCase(kaptcha)){
                    model.addAttribute("error","验证码输入错误！");
                    return "/login.jsp";
                }

                Subject subject = ShiroUtils.getSubject();
                UsernamePasswordToken token = new UsernamePasswordToken(username, password);
                subject.login(token);
            }catch (UnknownAccountException e) {
                e.printStackTrace();
                return "/login.jsp";
            }catch (IncorrectCredentialsException e) {
                e.printStackTrace();
                model.addAttribute("error","账号或密码不正确");
                return "/login.jsp";
            }catch (LockedAccountException e) {
                model.addAttribute("error","账号已被锁定,请联系管理员");
                e.printStackTrace();
                return "/login.jsp";
            }catch (AuthenticationException e) {
                e.printStackTrace();
                model.addAttribute("error","账户验证失败");
                return "/login.jsp";
            } catch (Exception e) {
                e.printStackTrace();
                return "/login.jsp";
            }

            String userid= ShiroUtils.getUserId();
            System.out.println(userid+">>>>>>");
            List<HashMap<String,Object>> list=ptMenuService.selectUserMenuDir(userid);
            List<Node> nodes=new ArrayList<Node>();
            if(list!=null&&list.size()>0){
                for(int i=0;i<list.size();i++){
                    HashMap<String,Object> m=list.get(i);
                    Node node=new Node(m.get("id")!=null?m.get("id").toString():"",
                            m.get("parentId")!=null?m.get("parentId").toString():"".toString(),
                            m.get("dirName")!=null?m.get("dirName").toString():"".toString(),"",
                            m.get("resUrl")!=null?m.get("resUrl").toString():"");
                    nodes.add(node);

                }
            }
            Node n=new Node();

            req.getSession().setAttribute("menus", n.createTreeRoots(nodes));
            req.getSession().setAttribute("niceName",ShiroUtils.getUserEntity().getNiceName());
            return  "/main.jsp";
        }

        /**
         * 退出
         */
        @RequestMapping(value = "/logout", method = RequestMethod.GET)
        public String logout(Model model) {
            ShiroUtils.logout();
            return "redirect:/login.jsp";
        }

    }


