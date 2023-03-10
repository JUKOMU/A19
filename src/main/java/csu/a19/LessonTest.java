package csu.a19;

import csu.a19.lesson.Lesson;
import csu.a19.mapper.LessonMapper;
import csu.a19.mapper.UserMapper;
import csu.a19.user.User;
import csu.a19.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.Array;
import java.rmi.NoSuchObjectException;
import java.util.Arrays;

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
        if (lesson != null){
            System.out.println(lesson);
            System.out.println("课程id：" + lesson.getId());
            System.out.println("课程名：" + lesson.getClassname());
            System.out.println("授课老师：" + lesson.getTeacher());
            System.out.println("课程简介：" + lesson.getCRY());
            System.out.print("课程图片：");
            String p = lesson.getPictures();
            System.out.println(p);
            System.out.print("课程时间地点：");
            String x = lesson.getDate_and_time();
            String[] y = x.split("\\|");
            System.out.println(Arrays.toString(lesson.getDate_and_time().split("\\|")));
            for (int i = 0; i < y.length; i++) {
                String[] a;
                a = y[i].split("\\.");
                for (int v = 0; v < a.length; v++) {
                    if (i == 0) {
                        if (v == 0) {
                            System.out.print("第" + a[v] + "周到");
                        }
                        if (v == 1) {
                            System.out.print("第" + a[v] + "周的");
                        }
                    }
                    if (i == 1) {
                        if (v < a.length - 1) {
                            System.out.print("星期" + a[v] + "和");
                        } else {
                            System.out.println("星期" + a[v] + ",");
                        }
                    }
                    if (i == 2) {
                        String[] b;
                        b = a[v].split("'");
                        for (int n = 0; n < b.length; n++) {
                            String[] a2;
                            a2 = y[i-1].split("\\.");
                            String[] a3;
                            a3 = y[i+1].split("\\.");
                            if (v==0){
                                if (n < b.length - 1) {
                                    for (int v2 = 0; v2 < a2.length; v2++) {
                                        if (i == 2) {
                                            if (v2 == 0) {
                                                System.out.print("星期"+a2[v2]+"上");
                                            }
//                                    if (v2 == 1) {
//                                        System.out.println("第" + a2[v2] + "周的");
//                                    }
                                        }
                                    }
                                    System.out.print("第"+b[n]+"节和");
                                } else {
                                    System.out.print("第"+b[n]+"节在");
                                    for (int v3 = 0; v3 < a3.length; v3++) {
                                        if (v3 == 0) {
                                            System.out.print(a3[v3]+",");
                                        }
                                    }
                                }
                            }
                            if (v==1){
                                if (n < b.length - 1) {for (int v2 = 0; v2 < a2.length; v2++) {
//                                    if (i == 2) {
//                                        if (v2 == 0) {
//                                            System.out.print("星期"+a2[v2]+"上");
//                                        }
                                    if (v2 == 1) {
                                        System.out.print("星期"+a2[v2]+"上");
                                    }
                                }
                                    System.out.print("第"+b[n]+"节和");
                                } else {
                                    System.out.print("第"+b[n]+"节在");
                                    for (int v3 = 0; v3 < a3.length; v3++) {
                                        //                                            if (v3 == 0) {
//                                                System.out.print("星期"+a3[v3]+"上");
//                                            }
                                        if (v3 == 1) {
                                            System.out.println(a3[v3]);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
