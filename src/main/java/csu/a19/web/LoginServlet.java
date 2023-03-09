package csu.a19.web;

import csu.a19.mapper.UserMapper;
import csu.a19.user.User;
import csu.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 接收用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //获取SqlSessionFactory对象
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
        // 获取SqlSession对象
        SqlSession sqlSession = sqlSessionFactory.openSession();
        // 获取Mapper
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User user = userMapper.select(username, password);
        // 释放资源
        sqlSession.close();


        // 设置content type
        response.setContentType("text/html;charset=utf-8");
        // 判断user释放为null
        if(user != null){
            // 登陆成功
            response.sendRedirect("index.html");
        }else {
            // 登陆失败
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}