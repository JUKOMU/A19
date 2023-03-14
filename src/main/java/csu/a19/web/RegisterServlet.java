package csu.a19.web;

import csu.a19.mapper.UserMapper;
import csu.a19.user.User;
import csu.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收用户数据
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // 获取用户输入的验证码
        String checkCode = request.getParameter("checkCode");
        // 程序生成的验证码，从Session获取
        HttpSession session = request.getSession();
        String checkCodeGen = (String) session.getAttribute("checkCodeGen");
        // 比对
        if(!checkCodeGen.equalsIgnoreCase(checkCode)) {
            request.setAttribute("register_msg", "验证码错误");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }else {
            //封装用户对象
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);


            //2. 调用mapper 根据用户名查询用户对象
            //2.1 获取SqlSessionFactory对象
            SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();

            //2.2 获取SqlSession对象
            SqlSession sqlSession = sqlSessionFactory.openSession();
            //2.3 获取Mapper
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

            //2.4 调用方法
            User u = userMapper.selectByUsername(username);




            //3. 判断用户对象释放为null
            if( u == null){
                // 用户名不存在，添加用户
                userMapper.add(user);
                response.sendRedirect("index.jsp");
            }else {
                response.setContentType("text/html;charset=utf-8");
                request.setAttribute("register_msg", "用户已存在");
            }
            // 提交事务
            sqlSession.commit();
            // 释放资源
            sqlSession.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}