package com.isoftstone.gdcoal.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.isoftstone.gdcoal.shiro.ShiroUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * Created by issuser on 2019/8/20.
 */
@Controller
public class PtSysLoginController {

        @Autowired
        private Producer producer;

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
        public String login(String username, String password, String captcha,Model model) {
            String kaptcha ="";
            System.out.println(username+">>>>>"+password);

            try{
                kaptcha=ShiroUtils.getKaptcha(Constants.KAPTCHA_SESSION_KEY);
                System.out.println(captcha+">>>"+kaptcha);
                if(!captcha.equalsIgnoreCase(kaptcha)){
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


