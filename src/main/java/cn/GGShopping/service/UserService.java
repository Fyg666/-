package cn.GGShopping.service;

import cn.GGShopping.entity.User;

public interface UserService {
    // 增（注册用户）
    void addUser(User user);
    // 删（注销用户）
    boolean delUser(int id);
    // 改（修改用户信息）
    boolean updUser(User user);
    // 查（查询出所有的用户  此功能可不实现）
    User selUser (String userName,String password);
    //个人信息
    User userManagementService(String userName);

    int updateUserManagement(String userName, String userAge, String userSex);

    int toRegistered(String userName,String sex,String age,String password);
}
