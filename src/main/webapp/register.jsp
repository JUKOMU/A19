<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>云平台注册页面</title>
    <link rel="stylesheet" href="./css/sign.css">
</head>
<body>
<div class="container">

    <!-- 左半部分登录 -->

    <div class="left">
        <div class="left-top">
            <div class="left-title">WELCOME</div>
            <div class="left-wd">sign in to explore <br> the vast array of courses</div>
            <img src="./images/land2.png" alt="">
            <div class="left-log">
                <a href="./login.jsp">已有账号，点击登录</a>
            </div>
            <div class="left-btm">LEARN MORE</div>
        </div>
    </div>
    <div class="right">
        <div class="right-top"></div>
    </div>

    <!-- 中心位置注册功能 -->
    <div class="cube">
        <div class="cube-panel">
            <h1>SIGN IN</h1>
            <form action="./registerServlet" method="post" autocomplete="off" onsubmit="return submit_judge()">
                <input name="username" type="text" placeholder="Username">
                <span class="username-sp"></span>
                <input name="phone" type="text" placeholder="Phone">
                <span class="phone-sp"></span>
                <div class="message">
                    <input name="message" type="text" placeholder="Message">
                    <a href="javascript:;" class="code">发送验证码</a>
                </div>
                <span></span>
                <input name="password" type="text" placeholder="Password">
                <span class="password-sp"></span>
                <input name="confirm" type="text" placeholder="Confirm">
                <span class="confirm-sp"></span>
                <span class="fail"></span>
                <div class="cube-btn">
                    <button type="submit">SIGN IN</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    /* 验证用户名 */
    const username = document.querySelector('[name=username]')
    //使用change事件 当值发生变化时
    username.addEventListener('change', verifyName)
    function verifyName () {
        const span = document.querySelector('.username-sp')
        const reg = /^[a-zA-Z0-9-_]{6,12}$/
        if (!reg.test(username.value)) {
            span.innerText = '输入不合法，请输入6-12位用户名'
            return false
        }
        span.innerText = ''
        return true
    }

    /* 发送短信验证 */
    const code = document.querySelector('.code')
    let flag = true
    code.addEventListener('click', function () {
        if (flag) {
            flag = false
            let i = 60
            code.innerHTML = `${i}秒后重新获取`
            let timeId = setInterval (function () {
                i--
                code.innerHTML = `${i}秒后重新获取`
                if (i === 0) {
                    clearInterval(timeId)
                    code.innerHTML = "重新获取"
                    flag = true
                }
            }, 1000)
        }
    })

    /* 验证手机号 */
    const phone = document.querySelector('[name=phone]')
    //使用change事件 当值发生变化时
    phone.addEventListener('change', verifyPhone)
    function verifyPhone () {
        const span = document.querySelector('.phone-sp')
        const phe = /^1(3\d|4[5-9]|5[0-35-9]|6[567]|7[0-8]|8\d|9[0-35-9])\d{8}$/
        if (!phe.test(phone.value)) {
            span.innerText = '输入不合法,请输入11位手机号'
            return false
        }
        span.innerText = ''
        return true
    }

    /* 验证密码 */
    const password = document.querySelector('[name=password]')
    //使用change事件 当值发生变化时
    password.addEventListener('change', verifyPwd)
    function verifyPwd () {
        const span = document.querySelector('.password-sp')
        const abc = /^[a-zA-Z0-9-_]{6,20}$/
        if (!abc.test(password.value)) {
            span.innerText = '输入不合法，请输入6-20位密码'
            return false
        }
        span.innerText = ''
        return true
    }

    /* 密码发生变化 */
    const confirm = document.querySelector('[name=confirm]')
    //使用change事件 当值发生变化时
    confirm.addEventListener('change', verifyCon)
    function verifyCon () {
        const span = document.querySelector('.confirm-sp')
        if (confirm.value !== password.value) {
            span.innerText = '两次密码输入不一致'
            return false
        }
        span.innerText = ''
        return true
    }

    /* 数据合法，允许提交 */
    function submit_judge() {
        return verifyName() && verifyPwd() && verifyPhone();
    }
</script>
</body>
</html>

<%--<script>--%>
<%--    document.getElementById("changeImg").onclick = function () {--%>
<%--        document.getElementById("checkCodeImg").src = "/A19/checkCodeServlet?"+new Date().getMilliseconds();--%>
<%--    }--%>

<%--</script>--%>
