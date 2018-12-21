package cn.guet.edu.web.controller;

import cn.guet.edu.web.pojo.Commodity;
import cn.guet.edu.web.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/commodity/add")
public class CommodityController extends HttpServlet{

    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");
        String number = req.getParameter("number");
        String price = req.getParameter("price");
        Commodity commodity = new Commodity();
        commodity.setName(name);
        commodity.setPrice(Double.parseDouble(price));
        commodity.setNumber(Integer.parseInt(number));
        commodity.setCreateTime(new Timestamp(System.currentTimeMillis()));
        userService.saveCommodity(commodity);
        resp.setContentType("application/json;charset=utf-8");
        resp.sendRedirect("/exp2/queryPage.jsp");
    }

}
