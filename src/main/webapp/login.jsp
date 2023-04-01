<%--
  Created by IntelliJ IDEA.
  User: Jukomu
  Date: 2023/3/12
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>云平台登录页面</title>
    <link rel="stylesheet" href="./css/load.css">
</head>
<body>
<div class="container">

    <!-- 左半部分图形界面 -->
    <div class="left">
        <div class="left-top">
            <img src="./images/land.png" alt="">
            <div class="left-wd">log in to explore <br> the vast array of courses</div>
            <div class="left-btm">LEARN MORE</div>
        </div>
    </div>

    <!-- 右半部分登录功能界面 -->
    <div class="right">
        <div class="right-panel">
            <div class="right-top">
                <div class="right-sign">
                    <h1>LOGIN IN</h1>
                    <img src="./images/land2.png" alt="">
                    <form action="./loginServlet" autocomplete="off" onsubmit="return submit_judge()">
                        <input name="username" type="text" placeholder="用户名">
                        <span></span>
                        <input name="password" type="text" placeholder="密码">
                        <span></span>
                        <div class="right-code">
                            <input name="code" type="text" class="input" placeholder="请输入验证码">
                            <div class="right-pic"><a href="#" id="changeImg" ><img id="checkCodeImg" src="./checkCodeServlet"></a></div>
                        </div>
                        <span class="fail">${login_msg}</span>
                        <div class="right-btn">
                            <button type="submit">LOGIN IN</button>
                        </div>
                    </form>
                    <div class="right-link">
                        <a href="#">忘记密码?点击此处</a>
                        <a href="./register.jsp">没有账号?点击注册</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    /* 验证用户名 */
    const username = document.querySelector('[name=username]')
    //使用change事件 当值发生变化时
    username.addEventListener('change', verifyName)
    function verifyName () {
        const span = username.nextElementSibling
        const reg = /^[a-zA-Z0-9-_]{6,12}$/
        if (!reg.test(username.value)) {
            span.innerText = '输入不合法，请输入6-12位用户名'
            return false;
        }
        span.innerText = ''
        return true
    }

    /* 验证密码 */
    const password = document.querySelector('[name=password]')
    //使用change事件 当值发生变化时
    password.addEventListener('change', verifyPwd)
    function verifyPwd () {
        const span = password.nextElementSibling
        const abc = /^[a-zA-Z0-9-_]{6,20}$/
        if (!abc.test(password.value)) {
            span.innerText = '输入不合法，请输入6-20位密码'
            return false;
        }
        span.innerText = ''
        return true
    }

    /* 用户名和密码合法，允许提交 */
    function submit_judge() {
        return verifyName() && verifyPwd();
    }
    /* 点击提交跳转首页 */
    // const form = document.querySelector('form')
    // form.addEventListener('submit', function (e) {
    //     const fail = document.querySelector('.fail')
    //     e.preventDefault()
    //     if(verifyName() && verifyPwd()) {
    //         localStorage.setItem('hy-uname', username.value)
    //
    //     }else {
    //         fail.innerText = '登录失败'
    //     }
    // })

    /* 更新验证码 */
    document.getElementById("changeImg").onclick = function () {
        document.getElementById("checkCodeImg").src = "/A19/checkCodeServlet?"+new Date().getMilliseconds();
    }

</script>
</body>
</html>