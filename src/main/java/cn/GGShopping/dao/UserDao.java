package cn.GGShopping.dao;

import cn.GGShopping.entity.User;

public interface UserDao {
    // 增（注册用户）
    void addUser(User user);
    // 删（注销用户）
    boolean delUser(int id);
    // 改（修改用户信息）
    boolean updUser(User user);
    // 查（查询出所有的用户  此功能可不实现）
    User selUser (int id);
}
