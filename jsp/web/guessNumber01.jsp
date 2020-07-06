<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/2
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title >小游戏</title>
    <style>

        body{
            background-color: #cccccc;
        }
        h2{
            text-align: center;

            color: aliceblue;
        }
        p{
            display: block;
            text-align: center;
        }
        div{
            color: lightseagreen ;
            text-align: center;
        }


    </style>
</head>
<body>

<h2 >          猜数字</h2>
<hr/>
        <p>游戏规则</p>

        <p>系统将会随机生成一个1-100之间的整数</p>
        <p>您将会有十次机会去将这个数猜测出来</p>
        <p>猜测之后会提示所猜数字是大了,小了或猜对了</p>
        <p>若在机会用完之前正确猜出则您获得胜利</p>
        <p>若十次机会用完仍未猜对,则游戏失败</p>

        <form action="guessNumber02.jsp" method="post">
            <br>
             <div>
                 <input type="submit" value="Enter the game！" class="button">
             </div>
        </form>


<%
    int a=(int)(Math.random()*100+1);
    session.setAttribute("number",a);
    session.setAttribute("count", new Integer(0));
%>
</body>
</html>
