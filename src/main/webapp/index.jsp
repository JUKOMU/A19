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
    <link rel="stylesheet" href="./iconfont2/iconfont.css">
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
                        <a href="file:///C:/Users/YANSIYU/Desktop/Service/course.html#">课程管理</a>
                    </li>
                    <li>
                        <a href="#">用户管理</a>
                    </li>
                    <li>
                        <a href="#">排课管理</a>
                    </li>
                    <li>
                        <a href="#">作业管理</a>
                    </li>
                    <li>
                        <a href="#">实验管理</a>
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
                <a href="#" id="user">
                    <img src="./images/user.png" alt="">
                    <span id="uspan">${user.username}</span>
                </a>
            </div>
        </div>
    </div>

    <!-- 侧边栏 -->
    <div class="sidebar">
        <ul class="sidebar-list">
            <li class="sidecourse"><div class="iconfont icon-zuoyeguanli"></div><a href="#">课程</a></li>
            <li><div class="iconfont icon-tuijian"></div><a href="#">推荐</a></li>
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
            <h2>我的课程表</h2>
            <div class="content">
                <dl>
                    <dt>继续学习程序设计语言
                    <dd>正在学习-使用对象</dd>
                    </dt>
                </dl>
                <dl>
                    <dt>继续学习程序设计语言
                    <dd>正在学习-使用对象</dd>
                    </dt>
                </dl>
                <dl>
                    <dt>继续学习程序设计语言
                    <dd>正在学习-使用对象</dd>
                    </dt>
                </dl>
            </div>
            <a href="#" class="more">今日课程</a>
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

    <!-- 精品推进课程 -->
    <div class="box wrapper">
        <div class="title">
            <h2>精品推荐</h2>
            <a href="#">查看全部</a>
        </div>

        <div class="content clearfix">
            <ul>
                <li>
                    <a href="#">
                        <img src="./images/pic.png" alt="">
                        <!-- 渐变背景的盒子 -->
                        <!-- mask表示遮罩层 -->
                        <div class="mask"></div>
                        <h3>Think PHP 5.0 博客系统实战项目演练</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <!-- 定位的hot小图-->
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic2.png" alt="">
                        <div class="mask"></div>
                        <h3>Android网络动态图片加载实战</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic3.png" alt="">
                        <div class="mask"></div>
                        <h3>大前端实战商城演练</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic4.png" alt="">
                        <div class="mask"></div>
                        <h3>Android实战项目演练</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic7.png" alt="">
                        <div class="mask"></div>
                        <h3>Android Hybrid APP开发实战 H5+原生</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic6.png" alt="">
                        <div class="mask"></div>
                        <h3>Kami2首页界面切换效果</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic7.png" alt="">
                        <div class="mask"></div>
                        <h3>Unity Profiler入门</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic8.png" alt="">
                        <div class="mask"></div>
                        <h3>Cocos2d-x 引擎源码中的纹理优化</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic2.png" alt="">
                        <div class="mask"></div>
                        <h3>大前端实战商城演练</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./images/pic3.png" alt="">
                        <div class="mask"></div>
                        <h3>Android实战项目演练</h3>
                        <p><span>高级</span> • 1125人在学习</p>
                        <img src="./images/hot.png" alt="" class="hot">
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- 版权 -->
    <div class="footer">
        <div class="wrapper">
            <div class="left">
                <img src="./images/logo.png" alt="">
                <p>学成在线致力于普及中国最好的教育它与中国一流大学和机构合作提供在线课程<br>
                    @2017年XTCG Inc.保留所有权利。渝ICP备2022002010号</p>
                <a href="#">下载APP</a>
            </div>
            <div class="right">
                <dl>
                    <dt>合作伙伴</dt>
                    <dd><a href="#">合作机构</a></dd>
                    <dd><a href="#">合作导师</a></dd>
                </dl>
                <dl>
                    <dt>合作伙伴</dt>
                    <dd><a href="#">合作机构</a></dd>
                    <dd><a href="#">合作导师</a></dd>
                </dl>
                <dl>
                    <dt>合作伙伴</dt>
                    <dd><a href="#">合作机构</a></dd>
                    <dd><a href="#">合作导师</a></dd>
                </dl>
            </div>
        </div>
    </div>
</div>


<script>
    /* 轮播图 */
    const sliderData = [
        { url: './images/banner1.jpg' },
        { url: './images/banner2.png'},
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

    /* 侧边栏课程隐藏效果 */
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
    document.getElementById("user").onclick = function () {
        var user = document.getElementById("uspan").innerText;
        if (user == null || user === ""){
            document.location.href = '/A19/login.jsp'
        }
    }
</script>
</body>
</html>