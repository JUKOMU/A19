package csu.a19.util;

import csu.a19.mapper.UserMapper;
import csu.a19.user.User;
import org.apache.ibatis.session.*;

public class GetUsers{
    private static User[] userlist;
    static {
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
        SqlSession sqlSession = sqlSessionFactory.openSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        userlist = userMapper.selectAll();
    }

    public static User[] getUserList() {
        return userlist;
    }

}
