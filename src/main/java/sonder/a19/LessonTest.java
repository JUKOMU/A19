package sonder.a19;

import sonder.a19.lesson.Lesson;
import sonder.a19.mapper.LessonMapper;
import sonder.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LessonTest", value = "/LessonTest")
public class LessonTest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取SqlSessionFactory对象
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
        // 获取SqlSession对象
        SqlSession sqlSession = sqlSessionFactory.openSession();
        // 获取Mapper
        LessonMapper lessonMapper = sqlSession.getMapper(LessonMapper.class);
        Lesson lesson = lessonMapper.selectByClassname("testname");
        // 释放资源
        sqlSession.close();
        if (lesson != null) {
            Integer id = lesson.getId();
            String classname = lesson.getClassname();
            String teacher = lesson.getTeacher();
            String CRY = lesson.getCRY();
            String[] pictures = lesson.getPictures().split(".");
            String[] week = lesson.getWeek().split(".");
            String[] date = lesson.getDate().split(".");
            String[] classes = lesson.getClasses().split("//|");
            String[] place = lesson.getPlace().split(".");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
