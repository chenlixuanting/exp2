package cn.guet.edu.web.controller;

import cn.guet.edu.web.pojo.Commodity;
import cn.guet.edu.web.service.UserService;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 商品信息查询
 * @author Administrator
 */
@WebServlet("/jsp/commodity/query")
public class UserController extends HttpServlet{

    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(Thread.currentThread().getName());
        List<Commodity> commodityList = userService.listCommodity();
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().write(JSON.toJSONString(commodityList));
    }

}
