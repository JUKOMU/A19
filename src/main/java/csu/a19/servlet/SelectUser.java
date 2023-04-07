package csu.a19.servlet;

import csu.a19.mapper.UserMapper;
import csu.a19.user.User;
import csu.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.servlet.http.HttpServlet;
import java.util.List;

public class SelectUser(int id) extends HttpServlet {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();
    SqlSession sqlSession = factory.openSession();
    UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
    List<User> users = userMapper.queryUser(id);
    sqlSession.close();
    return users;


}
