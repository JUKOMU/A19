<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>云平台</title>
    <link rel="stylesheet" href="./css/work.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="stylesheet" href="./iconfont6/iconfont.css">
</head>
<body>
    <div class="container">
        <!--网站的首页，所有的网站的首页都叫index。html因为服务器找首页都是找index.html-->
        <!--布局：从外到内，从上到下，从左到右-->
        <!--css: 浮动/display ；盒子模型 ；文字样式-->

        <!--头部header:负责头部区域的样式， wrapper只负责版心效果 -->
        <div class="header fixed">
            <div class="header-wrapper">
                <h1>
                    <a href="./index.jsp"><img src="./images/huayunlogo4.png" alt=""></a>
                </h1>
        
                <!-- 导航 -->
                <div class="nav">
                    <ul class="tool">
                        <li>
                            <a href="course.jsp">课程云</a>
                        </li>
                        <li>
                            <a href="user.jsp">用户云</a>
                        </li>
                        <li>
                            <a href="#">作业云</a>
                        </li>
                        <li>
                            <a href="#">实验云</a>
                        </li>
                    </ul>
                </div>
        
                <!-- 搜索 -->
                <div class="search">
                    <input type="text" placeholder="输入关键词">
                    <ul class="result-list">
                        <li class="past">历史记录：</li>
                        <li>清华大学很帅</li>
                        <li>北京大学厉害</li>
                        <li>复旦大学呀</li>
                        <li>中南大学</li>
                    </ul>
                    <span class="iconfont icon-icon-test1"></span>
                </div>
        
                <!-- 用户 -->
                <div class="user">
                    <img src="./images/user.png" alt="">
                    <a href="javascript:;"><span class="user-name">${cookie.user.value}</span></a>
                </div>
            </div>
        </div>

        <!-- 侧边栏 -->
        <div class="sidebar">
            <ul class="sidebar-list">
                <li class="sidecourse"><div class="iconfont icon-tongzhi"></div><a href="#">通知</a></li>
                <li><div class="iconfont icon-tuichudenglu" name= "out"></div><a href="#">退出</a></li>
                <li><div class="iconfont icon-12"></div><a href="#">顶部</a></li>
            </ul>
        </div>

        <!-- 隐藏通知栏 -->
        <div class="right">
            <h2>我的通知</h2>
            <div class="content">
                <dl>
                    <dt>课程时间更改！
                        <dd>xxxxxxxx</dd>
                    </dt>
                </dl>
                <dl>
                    <dt>课程地点更改！
                        <dd>xxxxxxxx</dd>
                    </dt>
                </dl>
                <dl>
                    <dt>课程取消！！！
                        <dd>xxxxxxxx</dd>
                    </dt>
                </dl>
            </div>
            <a href="#" class="more">今日通知</a>
        </div>

        <!-- 左侧功能栏 -->
        <div class="left-t">
            <div class="left-t-1">
                <div class="ware">
                    <span class="iconfont icon-jiaoxuekejian"></span>
                    <div>同步课件</div>
                </div>
                <div class="exam">
                    <span class="iconfont icon-kaoshi"></span>
                    <div>课程考试</div>
                </div>
                <div class="submit">
                    <span class="iconfont icon-zuoyerili"></span>
                    <div>课程作业</div>
                </div>
                <div class="question">
                    <span class="iconfont icon-cuoti"></span>
                    <div>错题反馈</div>
                </div>
            </div>
            <div class="left-t-2"></div>
        </div>

        <!-- 作业消息栏 -->
        <div class="left-b">
            <div class="left-b-1">
                <div class="left-b-2">作业批改提醒!</div>
                <div class="left-b-3">考试变更提醒!</div>
            </div>
        </div>
    </div>
        
    <script>
        /* 搜索栏文字输入和历史记录 */
        const input = document.querySelector('[type=text]')
        const searchul = document.querySelector('.result-list')
        input.addEventListener('focus', function () {
            searchul.style.display = 'block'
        })
        input.addEventListener('blur', function () {
            searchul.style.display = 'none'
        })

        input.addEventListener('keyup', function (e) {
            if (e.key === 'Enter') {
                if (input.value.trim()) {
                    console.log(input.value.trim());
                }
            input.value = ''
            }
        })

        /* 侧边栏通知隐藏效果 */
        const course = document.querySelector('.sidecourse')
        const right = document.querySelector('.right')
        course.addEventListener('mouseenter', function () {
            right.style.display = 'block'
            right.style.opacity = 1
        })
        course.addEventListener('mouseleave', function () {
            right.style.display = 'none'
            right.style.opacity = 0
        })

        
        /* 导航栏固定 */
        const header = document.querySelector('.header')
        window.addEventListener('scroll', function () {
            const n = document.documentElement.scrollTop
            if ( n >= 0) {
                header.classList.add('fixed')
            } else {
                header.classList.remove('fixed')
            }
        })

        /* 渲染用户名 */
        const userName = document.querySelector('.user-name')
        function render() {
            const uname = '${cookie.user.value}'
            if (!uname) {
                userName.innerHTML = '<a href="./login.jsp">登录</a>'
            }else {
                userName.innerHTML = `<a href="javascript:;">${uname}</a>`
            }
        }
        render()

        /* 退出登录 */
        const out = document.querySelector('[name=out]')
        out.addEventListener('click', function () {
            document.cookie = "user=0;expires=" + new Date().toUTCString();
            location.reload(true)
        })
    </script>
</body>    
    