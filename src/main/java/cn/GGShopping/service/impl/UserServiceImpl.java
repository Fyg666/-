package cn.GGShopping.service.impl;

import cn.GGShopping.dao.UserDao;
import cn.GGShopping.entity.User;
import cn.GGShopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    private UserDao userDao;

    @Override
    public void addUser(User user) {

    }

    @Override
    public boolean delUser(int id) {
        return false;
    }

    @Override
    public boolean updUser(User user) {
        return false;
    }

    @Override
    public User selUser(String userName,String password) {
        return userDao.selUser(userName,password);
    }

    @Override
    public User userManagementService(String userName) {
        return userDao.userManagementDao(userName);
    }
}
