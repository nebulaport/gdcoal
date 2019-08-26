/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package com.isoftstone.gdcoal.shiro;
import com.isoftstone.gdcoal.dao.PtUserDao;
import com.isoftstone.gdcoal.entity.PtUserEntity;
import com.isoftstone.gdcoal.service.PtUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.util.*;

/**
 * 认证
 *
 * @author Mark sunlightcs@gmail.com
 */
public class UserRealm extends AuthorizingRealm {
    /* @Autowired
     private SysUserDao sysUserDao;
     @Autowired
     private SysMenuDao sysMenuDao;*/
    @Autowired
    private PtUserService ptUserService;
    /**
     * 授权(验证权限时调用)
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        PtUserEntity user = (PtUserEntity)principals.getPrimaryPrincipal();
        String userId = user.getUserUuid();

        List<String> permsList;

        //系统管理员，拥有最高权限
		/*if(userId == Constant.SUPER_ADMIN){
			List<SysMenuEntity> menuList = sysMenuDao.selectList(null);
			permsList = new ArrayList<>(menuList.size());
			for(SysMenuEntity menu : menuList){
				permsList.add(menu.getPerms());
			}
		}else{
			permsList = sysUserDao.queryAllPerms(userId);
		}*/

        //用户权限列表
		/*Set<String> permsSet = new HashSet<>();
		for(String perms : permsList){
			if(StringUtils.isBlank(perms)){
				continue;
			}
			permsSet.addAll(Arrays.asList(perms.trim().split(",")));

		}*/

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //info.setStringPermissions(permsSet);
        if(user.getIsAdmin()!=null&&user.getIsAdmin().toString().equals("1")){
            System.out.println("++++++");
            info.addRole("admin");//管理权限
            info.addRole("dcuser");//业务相关
        }else{
            System.out.println("=====");
            info.addRole("dcuser");//业务相关权限
        }

        return info;
    }

    /**
     * 认证(登录时调用)
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authcToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken)authcToken;

        //查询用户信息
        PtUserEntity user=ptUserService.selectPtUserLogin(token.getUsername());

        System.out.println("token:username="+token.getUsername()+":"+ Arrays.toString(token.getPassword()));
        //账号不存在
        if(user == null) {
            throw new UnknownAccountException("账号或密码不正确");
        }

        //账号锁定.......
        if(user.getStatus()!=null&&user.getStatus().equals("0")){
            throw new LockedAccountException("账号已被锁定/删除,请联系管理员");
        }


        return new SimpleAuthenticationInfo(user, user.getPassword(), ByteSource.Util.bytes("123"), getName());
    }


}
