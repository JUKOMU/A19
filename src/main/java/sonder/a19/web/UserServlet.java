//package csu.a19.web;
//
//import csu.a19.user.User;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class UserServlet extends HttpServlet {
////    private static final long serialVersionUID = 1L;
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 处理 GET 请求
//        Integer userId = new Integer(request.getParameter("id")); // 获取用户ID参数
//        // 根据用户ID查询用户信息
//
//        User user = null; // 假设使用 DAO 模式查询用户信息
//        user.setId(userId);
//
//        userManager.updateuser(user);
//
//        // 将用户信息渲染到页面
//        request.setAttribute("user", user);
//        request.getRequestDispatcher("/user.jsp").forward(request, response); }
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 处理 POST 请求 String userName = request.getParameter("name");
//        // 获取用户名参数 String userEmail = request.getParameter("email");
//        // 获取用户邮箱参数 // 创建用户对象 User user = new User(); user.setName(userName); user.setEmail(userEmail);
//        // 保存用户信息到数据库 UserDAO.saveUser(user);
//        // 假设使用 DAO 模式保存用户信息
//        // 返回成功提示信息 response.getWriter().println("User created successfully!"); }
