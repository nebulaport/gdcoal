
package com.isoftstone.gdcoal.shiro;

import com.isoftstone.gdcoal.entity.PtUserEntity;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 * Shiro工具类
 *
 * @author Mark sunlightcs@gmail.com
 */
public class ShiroUtils {


	public static Session getSession() {
		return SecurityUtils.getSubject().getSession();
	}

	public static Subject getSubject() {
		return SecurityUtils.getSubject();
	}

	public static PtUserEntity getUserEntity() {
		return (PtUserEntity)SecurityUtils.getSubject().getPrincipal();
	}

	public static String getUserId() {
		return getUserEntity().getUserUuid();
	}
	
	public static void setSessionAttribute(Object key, Object value) {
		getSession().setAttribute(key, value);
	}

	public static Object getSessionAttribute(Object key) {
		return getSession().getAttribute(key);
	}

	public static boolean isLogin() {
		return SecurityUtils.getSubject().getPrincipal() != null;
	}

	public static void logout() {
		SecurityUtils.getSubject().logout();
	}
	
	public static String getKaptcha(String key)throws Exception{
		Object kaptcha = getSessionAttribute(key);
		if(kaptcha == null){
			throw new Exception("验证码已失效");
		}
		getSession().removeAttribute(key);
		return kaptcha.toString();
	}

}
