/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package com.isoftstone.gdcoal.shiro;

import com.isoftstone.gdcoal.entity.PtUserEntity;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import java.util.List;

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
		info.addRole("dcuser");
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
		 PtUserEntity user=new PtUserEntity();//查询。。。。。
		user.setUsername("admin");
		user.setPassword("9268a2522313521ffda71e86124dda6b");
		System.out.println("token:username="+token.getUsername()+":"+token.getPassword());
		//账号不存在
		if(user == null) {
			throw new UnknownAccountException("账号或密码不正确");
		}

		//账号锁定.......
		if(false){
			throw new LockedAccountException("账号已被锁定,请联系管理员");
		}

		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), ByteSource.Util.bytes("123"), getName());

		return info;
	}


}
