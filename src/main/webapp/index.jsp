<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>云平台</title>
    <link rel="stylesheet" href="./css/index.css">
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
                <a href="#"><img src="./images/huayunlogo4.png" alt=""></a>
            </h1>

            <!-- 导航 -->
            <div class="nav">
                <ul class="tool">
                    <li>
                        <a href="./course.jsp">课程云</a>
                    </li>
                    <li>
                        <a href="user.jsp">用户云</a>
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

    <!-- 侧边栏 -->
    <div class="sidebar">
        <ul class="sidebar-list">
            <li class="sidecourse"><div class="iconfont icon-tongzhi"></div><a href="#">通知</a></li>
            <li><div class="iconfont icon-tuichudenglu" name= "out"></div><a href="#">退出</a></li>
            <li><div class="iconfont icon-12"></div><a href="#">顶部</a></li>
        </ul>
    </div>

    <!-- 轮播图 -->
    <div class="banner">
        <ul class="slider-indicator">
            <li class="active"></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
        <div class="wrapper">
            <div class="left">
                <ul>
                    <li><a href="#">语文<span class="iconfont icon-yuwen1">></span></a></li>
                    <li><a href="#">数学<span class="iconfont icon-shuxue1">></span></a></li>
                    <li><a href="#">英语<span class="iconfont icon-yingyu1">></span></a></li>
                    <li><a href="#">物理<span class="iconfont icon-physics-world">></span></a></li>
                    <li><a href="#">化学<span class="iconfont icon-cup">></span></a></li>
                    <li><a href="#">生物<span class="iconfont icon-shengwujishu">></span></a></li>
                    <li><a href="#">历史<span class="iconfont icon-wenwuguji">></span></a></li>
                    <li><a href="#">政治<span class="iconfont icon-zhengzhi1">></span></a></li>
                    <li><a href="#">地理<span class="iconfont icon-earth-full">></span></a></li>
                </ul>
            </div>
            <div class="cube">
                <div class="pic">
                    <img src="./images/banner1.jpg" alt="">
                </div>
                <div class="toggle">
                    <button class="next">&gt;</button>
                    <button class="prev">&lt;</button>
                </div>
            </div>
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
    </div>

    <!-- 精品推荐 -->
    <div class="goods wrapper">
        <h2>精品推荐</h2>
        <ul>
            <li><a href="#">HTML</a></li>
            <li><a href="#">CSS</a></li>
            <li><a href="#">JAVASCRIPT</a></li>
            <li><a href="#">WEB</a></li>
            <li><a href="#">GITHUB</a></li>
            <li><a href="#">MYSQL</a></li>
            <li><a href="#">VUE</a></li>
            <li><a href="#">JAVA</a></li>
            <li><a href="#">C++</a></li>
        </ul>
        <a href="#" class="xingqu">修改兴趣</a>
    </div>

    <!-- 分区图片展示 -->
    <div class="show wrapper">
        <div class="show-course">
            <img src="./images/show2.png" alt="">
            <div class="words1">
                <div class="title1">Sonder 课程云</div>
                <div class="para1">
                    Sonder团队基于云平台教学管理系统所搭建的二级平台,<br>
                    新增个性化学习路线，奖励机制提高学生兴趣，保证课程质量。
                </div>
                <span class="btn1">
                        <a href="course.jsp">点击查看</a>
                    </span>
            </div>
        </div>
        <div class="show-user">
            <img src="./images/show1.png" alt="">
            <div class="words2">
                <div class="title2">Sonder 用户云</div>
                <div class="para2">
                    Sonder团队为老师,管理员量身定制的管理系统<br>
                    可以对课程学员，使用用户进行筛选和修改。
                </div>
                <span class="btn2">
                        <a href="user.jsp">点击查看</a>
                    </span>
            </div>
        </div>
        <div class="show-work"></div>
        <div class="show-lab"></div>
    </div>

    <!-- 热门分类 -->
    <div class="categories wrapper">
        <div class="pp-cg">
            <img src="./images/cg1.png" alt="">
        </div>
        <div class="pp-cg">
            <img src="./images/cg2.png" alt="">
        </div>
        <div class="pp-cg">
            <img src="./images/cg3.png" alt="">
        </div>
    </div>

    <!-- 版权 -->
    <div class="footer wrapper">
        <div class="left">
            <img src="./images/huayunlogo4.png" alt="">
            <p>华云数据云平台教学管理系统，为每一个爱学习的同学圆高校梦</p>
        </div>
        <div class="f-right">
            <div class="r-1">
                <div>
                    <h4><a href="#">关于我们</a></h4>
                </div>
                <br>
                <div>
                    <a href="" class="f-size">关于我们</a>
                    <a href="" class="f-size">联系我们</a>
                    <br>
                    <a href="" class="f-size">常见问题</a>
                    <a href="" class="f-size">问题反馈</a>
                </div>
            </div>
            <div class="r-2">
                <h4><a href="#">关注我们</a></h4>
            </div>
            <div class="r-3">
                <h4><a href="#">友情链接</a></h4>
            </div>

        </div>
    </div>
</div>


<script>
    /* 轮播图 */
    const sliderData = [
        { url: './images/banner1.jpg' },
        { url: './images/banner2.png' },
        { url: './images/banner3.png' },
        { url: './images/banner4.png' },
        { url: './images/banner5.png' },
    ]
    const img = document.querySelector('.banner .wrapper .pic img')
    /* 两个按钮 */
    const next = document.querySelector('.next')
    const prev = document.querySelector('.prev')
    const slider = document.querySelector('.banner .wrapper .pic img')

    let timeId = 0
    let i = 0

    /* 两个按钮控制轮播图的切换 */
    next.addEventListener('click', function(){
        i++
        i = i >=sliderData.length ? 0 : i
        toggle()
    })

    prev.addEventListener('click', function(){
        i--
        i = i < 0 ? sliderData.length - 1 : i
        toggle()
    })

    function toggle() {
        img.src = sliderData[i].url
        document.querySelector('.slider-indicator .active').classList.remove('active')
        document.querySelector(`.slider-indicator li:nth-child(${i + 1})`).classList.add('active')
    }


    /* 计时器：轮播图自动切换 */
    timeId = setInterval(function () {
        next.click()
    }, 1000)

    slider.addEventListener('mouseenter', function () {
        clearInterval(timeId)
    })

    slider.addEventListener('mouseleave', function () {
        clearInterval(timeId)
        timeId = setInterval(function () {
            next.click()
        }, 1000)
    })


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
    const right = document.querySelector('.banner .right')
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
        const uname = '${cookie.user.value}';
        console.log('${cookie.user.value}')
        if (!uname) {
            userName.innerHTML = '<a href="./login.jsp">登录</a>'
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
</html>