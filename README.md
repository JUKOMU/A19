## 项目结构：
```html
 src———main/java/sonder/a19————lesson————Lesson.java 课程类 
   |                   |____user————User.java     用户类 
   |                   |____mapper 
   |                   |         |____LessonMapper.java  封装对课程的操作方法 
   |                   |         |____UserMapper.java    封装对用户的操作方法 
   |                   |____util [链接请求类(简单理解为返回非页面对象的类)] 
   |                   |       |_____CheckCodeUtil.java           生成验证码 
   |                   |       |_____SqlSessionFactoryUtils.java  生成SqlSessionFactory对象 
   |                   |____web  [网页类(返回对象为网页的类)]         
   |                          |_____RegisterServlet.java     处理注册页面的请求 
   |                          |_____LoginServlet.java        处理登录页面的请求 
   |                          |_____CheckCodeServlet.java    处理验证码请求 
   |                          |_____LikesServlet.java        处理点赞请求 
   |____webapp                         存放html资源 
```
  
