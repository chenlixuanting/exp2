package cn.guet.edu.web.service;

import cn.guet.edu.web.dao.UserDao;
import cn.guet.edu.web.pojo.Commodity;

import java.util.List;

/**
 * @author Administrator
 */
public class UserService {

    private UserDao userDao = new UserDao();

    public List<Commodity> listCommodity() {
        return userDao.listCommodity();
    }

    public boolean saveCommodity(Commodity commodity) {
        return userDao.save(commodity);
    }

}
