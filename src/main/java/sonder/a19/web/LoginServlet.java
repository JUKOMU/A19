package sonder.a19.web;

import sonder.a19.mapper.UserMapper;
import sonder.a19.user.User;
import sonder.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 接收用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // 获取用户输入的验证码
        String checkCode = request.getParameter("code");

        // 从session获取验证码
        HttpSession session = request.getSession();
        String checkCodeGen = (String) session.getAttribute("checkCodeGen");

        // 比较
        if (!checkCodeGen.equalsIgnoreCase(checkCode)) {
            System.out.println(checkCode);
            System.out.println(checkCodeGen);
            request.setAttribute("login_msg", "验证码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return;
        }

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
            Cookie cookie = new Cookie("user", user.getUsername());
            session.setAttribute("user",user);
            response.addCookie(cookie);
            response.sendRedirect("index.jsp");
        }else {
            // 登陆失败
            request.setAttribute("login_msg", "用户名或密码错误");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}