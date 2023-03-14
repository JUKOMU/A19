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
    <title>login</title>
    <link href="css/login.css" rel="stylesheet">
</head>

<body>
<div id="loginDiv">
    <form action="/A19/loginServlet" method="post" id="form">
        <h1 id="loginMsg">LOGIN IN</h1>
        <p>Username:<input id="username" name="username" type="text"></p>

        <p>Password:<input id="password" name="password" type="password"></p>

        <div id="subDiv">
            <input type="submit" class="button" value="login up">
            <input type="reset" class="button" value="reset">&nbsp;&nbsp;&nbsp;
            <a href="register.jsp">没有账号？点击注册</a>
        </div>
        <div id="shake" style="text-align:center"><p id="msg" style="color: red;font-size: 20px">${login_msg}</p></div>
    </form>
</div>

</body>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
    /*intShakes Amount of shakes*/
    /*intDistance Shake distance*/
    /*intDuration Time duration*/
    jQuery.fn.shake = function(intShakes,intDistance,intDuration) {
        this.each(function() {
            var jqNode = $(this);
            jqNode.css({position: "relative"});
            for (var x=1; x<=intShakes; x++) {
                jqNode.animate({ left: (intDistance * -1) },(intDuration / intShakes) / 4)
                    .animate({ left: intDistance },(intDuration/intShakes)/2)
                    .animate({ left: 0 },(intDuration/intShakes)/4);
            }
        });
        return this;
    }
    $(function() {
        $('#shake').click(function() {
            $(this).shake(4,10,400);
        });
    });
</script>
</html>