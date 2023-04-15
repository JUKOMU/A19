//package csu.a19.web;
//
//import csu.a19.lesson.Lesson;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class LessonServlet extends HttpServlet {
////    private static final long serialVersionUID = 1L;
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 处理 GET 请求
//        String lessonId = request.getParameter("id"); // 获取课程ID参数
//        // 根据课程ID查询课程信息
//        Lesson lesson = LessonDAO.getLessonById(lessonId); // 假设使用 DAO 模式查询课程信息
//        // 将课程信息渲染到页面
//        request.setAttribute("lesson", lesson);
//        request.getRequestDispatcher("/lesson.jsp").forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 处理 POST 请求
//        String lessonName = request.getParameter("name"); // 获取课程名称参数
//        String lessonDescription = request.getParameter("description"); // 获取课程描述参数
//        // 创建课程对象
//        Lesson lesson = new Lesson();
//        lesson.setName(lessonName);
//        lesson.setDescription(lessonDescription);
//        // 保存课程信息到数据库
//        LessonDAO.saveLesson(lesson); // 假设使用 DAO 模式保存课程信息
//        // 返回成功提示信息
//        response.getWriter().println("Lesson created successfully!");
//    }
//}
