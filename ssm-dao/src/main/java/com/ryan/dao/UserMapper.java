package com.ryan.dao;

import com.ryan.pojo.UserDO;

/**
 * @author YoriChen
 * @date 2018/6/21
 */
public interface UserMapper {

    /**
     * 通过用户名查询用户信息
     * @param userName
     * @return
     */
    UserDO selectUserInfoByUserName(String userName);
}