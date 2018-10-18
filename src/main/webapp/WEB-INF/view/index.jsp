<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <!-- Bootstrap Core CSS -->
    <link href="../../../static/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="../../../static/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/morris.css" type="text/css" />
    <!-- Graph CSS -->
    <link href="../../../static/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="../../../static/js/jquery-3.3.1.min.js"></script>
    <!-- //jQuery -->
    <link
            href='http://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
            rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
          rel='stylesheet' type='text/css'>
    <!-- lined-icons -->
    <link rel="stylesheet" href="../../../static/css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
</head>
<body>
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="mother-grid-inner">
            <!--header start here-->
            <div class="header-main">
                <div class="profile_details w3l" style="float: right;">
                    <ul>
                        <li class="dropdown profile_details_drop">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <div class="profile_img">
										<span class="prfil-img"><img src="<%=request.getContextPath()%>/static/images/123.jpg" alt=""></span>
                                <div class="user-name">
                                    <p>你好,${user.username}</p>
                                </div>
                                <i class="fa fa-angle-down"></i> <i class="fa fa-angle-up"></i>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li><a href="#"><i class="fa fa-cog"></i> 修改信息</a></li>
                                <li><a href="#"><i class="fa fa-user"></i> 添加新账户</a></li>
                                <li><a href="#"><i class="fa fa-sign-out"></i>退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="clearfix">
                	<div class="profile_details w3l" style="float: left;">
                		<a class="btn btn-primary btn-lg" href="#">首页</a> <i class="fa fa-angle-right"></i>
               	   </div> 
                </div>
            </div>
            <!--heder end here-->
           
            <!--four-grids here-->
        </div>

            <script>
                $(document).ready(function() {
                    var navoffeset = $(".header-main").offset().top;
                    $(window).scroll(function() {
                        var scrollpos = $(window).scrollTop();
                        if (scrollpos >= navoffeset) {
                            $(".header-main").addClass("fixed");
                        } else {
                            $(".header-main").removeClass("fixed");
                        }
                    });

                });
            </script>
            <!-- /script-for sticky-nav -->
            <!--inner block start here-->
            <div class="inner-block"></div>
            <!--inner block end here-->
            <!--copy rights start here-->
            <div>
            <!-- 镶嵌第二页面 -->
           	 	<iframe>
           	 	
           	 	</iframe>
            </div>
            <div class="copyrights">
                <p>
                    	尾部，待定
                </p>
            </div>
    </div>
</div>

    <div class="sidebar-menu">
        <header class="logo1">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars">
            <label>操作平台</label>
            </span>
            </a>
        </header>
        <%-- 通过循环方式获得父菜单和子菜单，标签<c:forEach>、 items代表被循环的对象，通过EL表达式获得循环对象和菜单名 
         ${menu.childMenuList }代表从menu表中获取子菜单集合， --%>
        <div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
        <div class="menu">
            <ul id="menu">
            	<c:forEach var="menu" items="${menuList}">
           			<li id="menu-academico">
           			 <a href="#">
           				<i class="fa fa-list-ul" aria-hidden="true"></i>
           			  	<span>${menu.text}</span> 
	                  	<span class="fa fa-angle-right" style="float: right"></span>
           			  	<div class="clearfix"></div>
           			 </a>
           			 <ul id="menu-academico-sub">
           			 
         				<c:forEach var="second" items="${menu.childMenuList }">
	         				 <li id="menu-academico-avaliacoes">
		           				 <a href="<%=request.getContextPath() %>${second.url}">
		           				 	${second.text}
		           				 </a>
	           				 </li>
         		 		</c:forEach>
           			 </ul>
           			</li>
            	</c:forEach>
             <!--    <li id="menu-academico">
                <a href="#">
	                <i class="fa fa-list-ul" aria-hidden="true"></i><span>第五个</span> 
	                <span class="fa fa-angle-right" style="float: right"></span>
                    <div class="clearfix"></div>
                </a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="#">Icons</a></li>
                        <li id="menu-academico-avaliacoes">
                        <a href="typography.html">Typography</a></li>
                        <li id="menu-academico-avaliacoes"><a href="#">Faq</a></li>
                    </ul>
                </li>
				
               <li id="menu-academico"><a href="#"><i class="fa fa-cogs"
                                                       aria-hidden="true"></i><span>第七个</span>
                    <span class="fa fa-angle-right" style="float: right"></span>
                    <div class="clearfix"></div></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="#">Buttons</a></li>
                        <li id="menu-academico-avaliacoes"><a href="#">Grids</a></li>
                    </ul>
                </li>

                <li id="menu-academico"><a href="#"><i
                        class="fa fa-file-text-o"></i> <span>第十个</span> <span
                        class="fa fa-angle-right" style="float: right"></span>
                    <div class="clearfix"></div></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-boletim"><a href="#">Calendar</a></li>
                        <li id="menu-academico-avaliacoes"><a href="#">SignIn</a></li>
                        <li id="menu-academico-avaliacoes"><a href="#">SignUp</a></li>
                    </ul>
                </li>

                <li><a href="#"><i class="fa fa-check-square-o nav_icon"></i><span>第十一个</span>
                    <span class="fa fa-angle-right" style="float: right"></span>
                    <div class="clearfix"></div></a>
                    <ul>
                        <li><a href="#"> Input</a></li>
                        <li><a href=#>Validation</a></li>
                    </ul>
               </li> --> 
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    var toggle = true;

    $(".sidebar-icon").click(
        function() {
            if (toggle) {
                $(".page-container").addClass("sidebar-collapsed")
                    .removeClass("sidebar-collapsed-back");
                $("#menu span").css({
                    "position" : "absolute"
                });
            } else {
                $(".page-container").removeClass("sidebar-collapsed")
                    .addClass("sidebar-collapsed-back");
                setTimeout(function() {
                    $("#menu span").css({
                        "position" : "relative"
                    });
                }, 400);
            }

            toggle = !toggle;
        });
</script>
<!--js -->
<script src="<%=request.getContextPath() %>/static/js/jquery.nicescroll.js"></script>
<script src="<%=request.getContextPath() %>/static/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
<!-- /Bootstrap Core JavaScript -->
<!-- morris JavaScript -->
<script src="<%=request.getContextPath() %>/static/js/raphael-min.js"></script>
<script src="<%=request.getContextPath() %>/static/js/morris.js"></script>
<script>
    $(document).ready(
        function() {
            //BOX BUTTON SHOW AND CLOSE
            jQuery('.small-graph-box').hover(function() {
                jQuery(this).find('.box-button').fadeIn('fast');
            }, function() {
                jQuery(this).find('.box-button').fadeOut('fast');
            });
            jQuery('.small-graph-box .box-close').click(function() {
                jQuery(this).closest('.small-graph-box').fadeOut(200);
                return false;
            });

            //CHARTS
            function gd(year, day, month) {
                return new Date(year, month - 1, day).getTime();
            }

            graphArea2 = Morris.Area({
                element : 'hero-area',
                padding : 10,
                behaveLikeLine : true,
                gridEnabled : false,
                gridLineColor : '#dddddd',
                axes : true,
                resize : true,
                smooth : true,
                pointSize : 0,
                lineWidth : 0,
                fillOpacity : 0.85,
                data : [ {
                    period : '2014 Q1',
                    iphone : 2668,
                    ipad : null,
                    itouch : 2649
                }, {
                    period : '2014 Q2',
                    iphone : 15780,
                    ipad : 13799,
                    itouch : 12051
                }, {
                    period : '2014 Q3',
                    iphone : 12920,
                    ipad : 10975,
                    itouch : 9910
                }, {
                    period : '2014 Q4',
                    iphone : 8770,
                    ipad : 6600,
                    itouch : 6695
                }, {
                    period : '2015 Q1',
                    iphone : 10820,
                    ipad : 10924,
                    itouch : 12300
                }, {
                    period : '2015 Q2',
                    iphone : 9680,
                    ipad : 9010,
                    itouch : 7891
                }, {
                    period : '2015 Q3',
                    iphone : 4830,
                    ipad : 3805,
                    itouch : 1598
                }, {
                    period : '2015 Q4',
                    iphone : 15083,
                    ipad : 8977,
                    itouch : 5185
                }, {
                    period : '2016 Q1',
                    iphone : 10697,
                    ipad : 4470,
                    itouch : 2038
                }, {
                    period : '2016 Q2',
                    iphone : 8442,
                    ipad : 5723,
                    itouch : 1801
                } ],
                lineColors : [ '#ff4a43', '#a2d200', '#22beef' ],
                xkey : 'period',
                redraw : true,
                ykeys : [ 'iphone', 'ipad', 'itouch' ],
                labels : [ 'All Visitors', 'Returning Visitors',
                    'Unique Visitors' ],
                pointSize : 2,
                hideHover : 'auto',
                resize : true
            });

        });
</script>
</body>
</html>