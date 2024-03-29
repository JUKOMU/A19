<%--
  Created by IntelliJ IDEA.
  User: Jukomu
  Date: 2023/4/2
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="sonder.a19.user.User" %>
<%@page import="sonder.a19.mapper.UserMapper" %>
<%@page import="sonder.a19.util.GetUsers" %>
<%
    User[] userList = GetUsers.getUserList();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户云</title>
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/user.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="stylesheet" href="./iconfont4/iconfont.css">
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
                        <a href="./user.jsp">用户云</a>
                    </li>
                    <li>
                        <a href="work.jsp">作业云</a>
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

    <!-- 添加表单 -->
    <div class="pm-panel wrapper">
        <div class="pm-panel-heading">
            <div class="pm-panel-title">用户管理系统</div>
        </div>
        <form class="pm-panel-body" name="info">
            <div class="input-group1">
                <div class="input-group-addon1">用户名</div>
                <input type="text" class="urname" id="exampleInputAmount" placeholder="请输入用户名">
            </div>
            <div class="input-group1">
                <div class="input-group-addon1">学校</div>
                <input type="text" class="ursch" id="exampleInputAmount" placeholder="请输入学校">
            </div>
            <div class="input-group1">
                <div class="input-group-addon1">年级</div>
                <input type="text" class="urgrade" id="exampleInputAmount" placeholder="请输入年级">
            </div>
            <div class="input-group1">
                <div class="input-group-addon1">性别</div>
                <input type="text" class="urgen" id="exampleInputAmount" placeholder="请输入性别">
            </div>
            <div class="input-group1">
                <div class="input-group-addon1">电话</div>
                <input type="text" class="urpho" id="exampleInputAmount" placeholder="请输入电话">
            </div>
            <button class="body-btn">添加</button>
        </form>
    </div>

    <!-- 表单 -->
    <table class="table1 table-bordered wrapper">
        <thead>
        <tr class="table1-tr">
            <th>ID</th>
            <th>用户名</th>
            <th>学校</th>
            <th>年级</th>
            <th>性别</th>
            <th>电话</th>
            <th>操作</th>
        </tr>
        <%
            for (User user :userList) {
        %>
        <tr class="table1-tr">
            <th><%=user.getId()%></th>
            <th><%=user.getUsername()%></th>
            <th><%=user.getHead()%></th>
            <th><%=user.getAge()%></th>
            <th><%=user.getGender()%></th>
            <th><%=user.getTEL()%></th>
            <th><%=user.getAccess()%></th>
        </tr>
        <%
            }
        %>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>

<!-- 侧边栏 -->
<div class="sidebar">
    <ul class="sidebar-list">
        <li class="sidecourse"><div class="iconfont icon-tongzhi"></div><a href="#">通知</a></li>
        <li><div class="iconfont icon-tuichudenglu" name= "out"></div><a href="#">退出</a></li>
        <li><div class="iconfont icon-12"></div><a href="#">顶部</a></li>
    </ul>
</div>

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

<script>
    /* 数据渲染 */
    const initData = [
        {
            stuId: 1,
            uname: 'SIYU',
            sch: '中南大学',
            grade: '大一',
            gender: '男',
            pho: '1898610',
        }
    ]

    const arr = JSON.parse(localStorage.getItem('data')) || []
    console.log(arr);
    const tbody = document.querySelector('tbody')

    function renders() {
        const trArr = arr.map(function(ele, index) {
            return `
                <tr>
                    <td>${ele.stuId}</td>
                    <td>${ele.uname}</td>
                    <td>${ele.sch}</td>
                    <td>${ele.grade}</td>
                    <td>${ele.gender}</td>
                    <td>${ele.pho}</td>
                    <td><a href="javascript:;" data-id="${index}">删除</a></td>
                </tr>
                `
        })
        console.log(trArr)
        tbody.innerHTML = trArr.join('')
    }

    renders()

    /* 表单数据提交 */
    const info = document.querySelector('[name=info]')
    const urname = document.querySelector('.urname')
    const ursch = document.querySelector('.ursch')
    const urgen = document.querySelector('.urgen')
    const urpho = document.querySelector('.urpho')
    const urgrade = document.querySelector('.urgrade')
    info.addEventListener('submit', function (e) {
        e.preventDefault()
        if (!urname.value || !urgen.value || !urgrade.value || !urpho.value || !ursch.value) {
            return alert('输入内容不能为空')
        }

        arr.push({
            stuId: arr.length ? arr[arr.length - 1].stuId + 1 : 1,
            uname: urname.value,
            sch: ursch.value,
            grade: urgrade.value,
            gender: urgen.value,
            pho: urpho.value,
        })

        renders()
        this.reset()
        localStorage.setItem('data', JSON.stringify(arr))
    })


    /* 删除表单数据 */
    tbody.addEventListener('click', function(e) {
        if (e.target.tagName === 'A') {
            if (confirm('您确定要删除这条数据吗？')) {
                arr.splice(e.target.dataset.id, 1)
                renders()
                localStorage.setItem('data', JSON.stringify(arr))
            }
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

    /* 退出登录 */
    const out = document.querySelector('[name=out]')
    out.addEventListener('click', function () {
        document.cookie = "user=0;expires=" + new Date().toUTCString();
        location.reload(true)
    })

</script>
</body>
</html>
