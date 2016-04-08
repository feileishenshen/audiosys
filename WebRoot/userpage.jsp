<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<meta charset="utf-8" />
    <link href="Resources/head.css" rel="stylesheet" />
    <link href="perside.css" rel="stylesheet" />
    <link href="content/bootstrap.css" rel="stylesheet" />
    <link href="content/bootstrap-theme.css" rel="stylesheet" />
    <link href="content/font-awesome.css" rel="stylesheet" />

    <style>
        body {
            margin: 0 auto;
            padding: 0;
        }

        a {
            color: black;
            list-style: none;
        }

            a:hover {
                color: #e23636;
                text-decoration: none;
            }
            .sidebar {
            position: fixed;                        
            display: block;
            padding: 20px;
            overflow-x: hidden;
            overflow-y: auto;
            background-color: #efeded;
            border-right: 1px solid #eee;
           // width:100%;
        }

        .nav-sidebar {
            margin-right: -21px;
            margin-bottom: 20px;
            margin-left: -20px;
        }

        .nav-sidebar > li > a {
            padding-right: 20px;
            padding-left: 20px;
        }

        .nav-sidebar > .active > a,
        .nav-sidebar > .active > a:hover,
        .nav-sidebar > .active > a:focus {
            color: #fff;
            background-color: #428bca;
        }
        .main{
        	padding-top:100px;
        	padding-right:10%;
        }
    </style>
</head>
<body>
    <div id="head">
        <input id="stop" type="button" class="player-stop btn-lg" style="display:none; float:left;color:#e23636;" value="停止播放" onclick="hiden()" />
        <div class="logo">
            <a href="home.html"><img src="Resources/cat.jpg" alt="logo" style="height:100%;width:80%;" /></a>
        </div>
        <div class="SiMusic">
            <a href="#">电台</a>
        </div>
        <div class="SiMusic">
            <a href="singlemusic.html">单曲</a>
        </div>
        <div class="SiMusic">
            <a href="#">专栏</a>
        </div>
        <div class="SiMusic">
            <a href="#">关于</a>
        </div>
    </div>



    <div class="container-fluid">
        <div class="row">
            <!--左边导航-->
            <div class="col-md-1 sidebar" id="sid">
               
                <ul class="nav nav-sidebar">
                    <li><a href="#">个人信息</a> </li>
                    <li><a href="#" id="getform">已上传</a> </li>
                    <li><a href="#" id="Dshangchuan">上传</a> </li>
                    <li><a href="#" id="adjust">收藏</a> </li>
                </ul>

            </div>
            <div class="col-sm-10 col-sm-offset-1">
                                 
            <div id="shangchuan" style="display:none" >
             <input style="background-image:url(Resources/shangchuan.png);height:100px;width:100px;border:none;margin-left:30%;margin-top:5px;"/>
             <form action="uploadAction.action" enctype="multipart/form-data" method="post">
                <input type="file" name="myFile" style="margin-left:30%;margin-top:5px;"><br>
                <input type="text" name="audioid" placeholder="请编辑音乐编号" style="margin-left:30%;margin-top:5px;"><br>
                <input type="text" name="audioname" placeholder="请编辑音乐名"style="margin-left:30%;margin-top:5px;"><br>
      
                <button type="submit" class="submit_button">提交</button>
                <div class="error"><span>+</span></div>
            </form>
                     </div>
             
            </div>
        </div>
    </div>
    <script src="content/jquery-2.1.4.js"></script>
   <script>
       $(document).ready(function () {
           $("#Dshangchuan").click(function () {
               document.getElementById("shangchuan").style.display = "block";
               //$("#shangchuan").slideToggle();
           });
       });
        total = document.documentElement.clientHeight;
       colHeight = total - document.getElementById("sid").offsetTop;
       document.getElementById("sid").style.height = colHeight + "px";
       
   </script>
</body>
</html>
