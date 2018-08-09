package com.lwj.mapper;

import com.lwj.bean.UserInfo;

public interface UserInfoMapper {
       public UserInfo queryByUsername(String username);
       public void updateLoginStatusByUsername(String username);
       public UserInfo queryByPhoneNum(String phoneNum);
       public UserInfo executeLogin(String username,String password);
       public void signup(String username,String password,String phoneNum,String address);
}
