## 项目结构：

<pre>
<p style="margin:0">src———main/java/csu/a19————lesson————Lesson.java 课程类</p>
<p style="margin:0">  |                   |____user————User.java     用户类</p>
<p>  |                   |____mapper</p>
<p>  |                   |         |____LessonMapper.java  封装对课程的操作方法</p>
<p>  |                   |         |____UserMapper.java    封装对用户的操作方法</p>
<p>  |                   |____util [链接请求类(简单理解为返回非页面对象的类)]</p>
<p>  |                   |       |_____CheckCodeUtil.java           生成验证码</p>
<p>  |                   |       |_____SqlSessionFactoryUtils.java  生成SqlSessionFactory对象</p>
<p>  |                   |____web  [网页类(返回对象为网页的类)]</p>        
<p>  |                          |_____RegisterServlet.java     处理注册页面的请求</p>
<p>  |                          |_____LoginServlet.java        处理登录页面的请求</p>
<p>  |                          |_____CheckCodeServlet.java    处理验证码请求</p>
<p>  |                          |_____LikesServlet.java        处理点赞请求</p>
<p>  |____webapp                         存放html资源</p>
</pre>
  
