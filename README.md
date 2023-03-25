## 项目结构：

<p style="margin: 0;padding: 0;line-height: 30px"><pre>src———main/java/csu/a19————lesson————Lesson.java 课程类</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |____user————User.java     用户类</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |____mapper</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |         |____LessonMapper.java  封装对课程的操作方法</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |         |____UserMapper.java    封装对用户的操作方法</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |____util [链接请求类(简单理解为返回非页面对象的类)]</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |       |_____CheckCodeUtil.java           生成验证码</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |       |_____SqlSessionFactoryUtils.java  生成SqlSessionFactory对象</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                   |____web  [网页类(返回对象为网页的类)]</pre></p>        
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                          |_____RegisterServlet.java     处理注册页面的请求</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                          |_____LoginServlet.java        处理登录页面的请求</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                          |_____CheckCodeServlet.java    处理验证码请求</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |                          |_____LikesServlet.java        处理点赞请求</pre></p>
<p style="margin: 0;padding: 0;line-height: 30px"><pre>  |____webapp                         存放html资源</pre></p>

  
