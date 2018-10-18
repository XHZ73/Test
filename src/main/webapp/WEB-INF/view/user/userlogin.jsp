<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        #divid1{
            width:100%;
            height:680px;
            background-image: url(../../../static/images/2.jpg);
            /* background-position: right bottom, left top;
             background-repeat: no-repeat, repeat;*/
            background-size: 100%;
            padding-top: 100px;
            padding-left: 35%;
        }
        img {max-width: 800px;  height: auto;}
		
       /* #body,#head{
            height: 100%;
            width: 100%;
        }*/
        #divid2{
            width: 40%;
            height:100%;
        }

        #divid3{
            width: 100%;
           	height:20%;
           	padding-bottom: 100px;
        }
        
        #divid4{
        	border-bottom-color: gray;
        }

        input {
            border-radius: 5px;
            width: 250px;
            height: 30px;
            font-size: 25px;
        }

       #h1id{
           padding-top: 95px;
           padding-left: 55px;
       }
       
       tr{
       		line-height: 30px;
       }

    </style>
	<%-- <script type="text/javascript">
	$(function(){
		$("#username").mousedown(function(){
			var password=$("#password").val();
			if(password == null){
				alert("密码不能为空");
			}
		});
		
		$("#password").mousedown(function(){
			var username=$("#username").val();
			if(username == null){
				alert("用户名不能为空");
			}
		});
		
		$("#loginBtn").click(function(){
			//将form表单的数据序列化
			var loginForm = $("#loginform").serialize()
			//进行异步提交
			$.ajax({
				//把请求发送出去的地方
				url:"<%=request.getContextPath()%>/user/login",
				//数据类型
				type:"post",
				//被发送的数据名
				data:loginForm,
				dataType:"json",
				//成功之后回调函数
				success:function(data){
					if(data){
						alert("登陆成功");
						//重定向到系统首页面
						var url= "<%=request.getContextPath()%>/user/index"
						location.href=url;
					}else{
						alert("登录失败");
						//重定向到登录界面
						var url="<%=request.getContextPath()%>/user/userlogin"
						location.href=url;
					}
				}
			});
		});		
	});
	</script>--%>
</head>
<body id="bodyid" >
    <div id="divid1">
        <div id="divid2">
            <div id="divid3">
                <span id="spanid">
                    <h1 id="h1id">欢迎登录图书管理系统</h1>
                </span>
            </div>
            <div id="divid4">
            <form id="loginform" action="/user/login" method="post">
>
                <table>
                    <tr>
                        <td>登录名：</td>
                        <td>
                            <input type="text" id="username" name="username" >
                        </td>
                        <span id="span1"></span>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td>
                            <input type="password" id="password" name="password">
                        </td>
                        <span id="span2"></span>
                    </tr>

                    <tr>
                        <td colspan="8" align="center" style=";padding-top: 20px">
                        	<!-- <button type="submit" class="btn btn-xs">登录</button> -->
                             <button type="submit"  id="loginBtn" style="width: 150px;height: 40px">登录</button> 
                        </td>
                    </tr>
                </table>
            </form>
            </div>
        </div>
    </div>
</body>
</html>