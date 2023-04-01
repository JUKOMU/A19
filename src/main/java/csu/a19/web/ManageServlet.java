package csu.a19.web;

import csu.a19.mapper.UserMapper;
import csu.a19.user.User;
import csu.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageServlet", value = "/manageServlet")
public class ManageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
        SqlSession sqlSession = sqlSessionFactory.openSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User[] userList = userMapper.selectAll();
        sqlSession.close();

//        request.setAttribute("ele", userList);
        System.out.println("0");
        List<User> l = null;
        for (User user : userList) {
            System.out.println(user);
            l = null;
            l.add(user);
        }
        System.out.println(userList);
        request.setAttribute("ele", "123");
        request.getRequestDispatcher("/user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
