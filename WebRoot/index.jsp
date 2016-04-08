<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <meta charset="utf-8" />
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">-->
    <!--<link href="content/bootstrap.css" rel="stylesheet" />
    <link href="content/bootstrap-theme.css" rel="stylesheet" />
    <link href="content/font-awesome.css" rel="stylesheet" />-->
    <link href="content/bootstrap.css" rel="stylesheet" />
    <link href="content/bootstrap-theme.css" rel="stylesheet" />
    <link href="content/font-awesome.css" rel="stylesheet" />
    <link href="Resources/head.css" rel="stylesheet" />
    <script src="Resources/login.js"></script>
    <link href="singlemusic.jsp" rel="next" />
    <link href="Resources/component.css" rel="stylesheet" />
    <!--<link href="Resources/demo.css" rel="stylesheet" />-->
    <!--<link href="Resources/normalize.css" rel="stylesheet" />-->
    <script type="text/javascript">
(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));
var bdcs = document.createElement('script');
bdcs.type = 'text/javascript';
bdcs.async = true;
bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=64117918473826671' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(bdcs, s);})();</script>
    <script type="text/javascript" src="login.js"></script>
    <script src="jwplayer-7.2.2/jwplayer.js"></script>
    <link href="skins/five.css" rel="stylesheet" />
    <script src="content/jquery-2.1.4.js"></script>
    <script type="text/javascript">
        $(function () {
            //获取要定位元素距离浏览器顶部的距离
            var navH = $(".player-stop").offset().top;
            //滚动条事件
            $(window).scroll(function () {
                //获取滚动条的滑动距离
                var scroH = $(this).scrollTop();
                //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
                if (scroH >= navH) {
                    $(".player-stop").css({ "position": "fixed", "top": 0, "left": 0 });
                } else if (scroH < navH) {
                    $(".player-stop").css({ "position": "static", "margin": "0 auto" });
                }
                console.log(scroH == navH);
            })
        });
        //$("#stop").click(function () {
        //    this.style.display = "none";
        //})
        function hiden() {
            document.getElementById("stop").style.display = "none";
        }
        var thePlayer;  
        $(function() {
            thePlayer = jwplayer("container").setup({
                flashplayer: 'jwplayer-7.2.2/jwplayer.flash.swf',
                file: 'Resources/Bruno Mars - Marry You.mp3',
                width: 0,
                height: 0,
                dock: false,
                image:"Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg",
                skin: "skins/five.css",
                playlist:"" ,
            });
       
        
            //播放 暂停
        $('.player-play').click(function () {
                if (thePlayer.getState() != 'PLAYING') {
                    thePlayer.play(true);
                    document.getElementById("stop").style.display = "block";                   
                } else {                    
                    thePlayer.play(false);
                }
            });

        //    //停止
           $('.player-stop').click(function() { thePlayer.stop(); });

        //    //获取状态
        //    $('.player-status').click(function() {
        //        var state = thePlayer.getState();
        //        var msg;
        //        switch (state) {
        //            case 'BUFFERING':
        //                msg = '加载中';
        //                break;
        //            case 'PLAYING':
        //                msg = '正在播放';
        //                break;
        //            case 'PAUSED':
        //                msg = '暂停';
        //                break;
        //            case 'IDLE':
        //                msg = '停止';
        //                break;
        //        }
        //        alert(msg);
        //    });

        //    //获取播放进度
        //    $('.player-current').click(function() { alert(thePlayer.getPosition()); });

        //    //跳转到指定位置播放
        //    $('.player-goto').click(function() {
        //        if (thePlayer.getState() != 'PLAYING') {    //若当前未播放，先启动播放器
        //            thePlayer.play();
        //        }
        //        thePlayer.seek(30); //从指定位置开始播放(单位：秒)
        //    });

        //    //获取视频长度
        //    $('.player-length').click(function() { alert(thePlayer.getDuration()); });
        });
    </script>
    <script type="text/javascript">jwplayer.key = "887zsTo75XCpGDcUtoiDKQvnZEgpb083zlSFQg==";</script>


    <style type="text/css">
        #show {
            width: 71%;
            margin-top: 40px;
            margin-left: 15%;
            height: 200px;
            margin-right: 15%;
        }
        img:hover{
           
	/*opacity: 0.7;*/
	/*-webkit-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);*/
}
        
        #radiostation {
            margin-top: 10px;
            margin-left: 15%;
            width: 71%;
            margin-right: 15%;
            height: 520px;
        }

        .tiltle {
            //width:%;
        }

            .tiltle h3 {
                border-left: 2px solid #e23636;
                border-left-width: 6px;
                float: left;
                margin-left: 2px;
            }

            .tiltle .stations {
                height: 60px;
            }

        .stations a {
            color: #6d6666;
            margin-left: 10px;
            padding-top: 30px;
            float: right;
        }

            .stations a:hover {
                color: #e23636;
            }

        .radio {
            margin-top: 20px;
            height: 450px;
            width: 100%;
            box-shadow: #6d6666 0 0 6px 6px inset;
            padding: 20px 10px 10px 10px;
        }

            .radio a {
                color: #6d6666;
            }


        .first {
            padding-left: 15px;
            float: left;
            height: 100%;
            padding-bottom: 4%;
        }

            .first a:hover {
                color: #6d6666;
            }

        .second {
            float: left;
            padding-left: 0px;
            padding-right: 10px;
            height: 50%;
            padding-bottom: 4%;
        }

            .second a:hover {
                color: #6d6666;
            }

        .third {
            float: left;
            padding-left: 0px;
            padding-right: 10px;
            height: 50%;
            padding-bottom: 4%;
        }

            .third a:hover {
                color: #6d6666;
            }

        #originalpush {
            margin-top: 20px;
            margin-left: 15%;
            margin-right: 15%;
            height: 420px;
            width: 71%;
        }

        .num {
            height: 350px;
            margin-top: 20px;
            padding-left: 0px;
            padding-bottom: 4%;
        }

        .num1 {
            border: 1px dashed #6d6666;
            height: 100%;
            padding-top: 10px;
            margin-left: 20px;
        }

            .num1 .img img {
                float: left;
                height: 150px;
                width: 150px;
                border-radius: 50%;
                display: inline;
            }

        .num .til {
            float: left;
            text-align: left;
            padding: 40px 0 0px 40px;
            font-size: 20px;
            display: inline;
        }

        .num1 .cont {
            float: none;
            padding: 10px 0px 30px 10px;
            height: 130px;
        }

        .cont p {
            text-overflow: ellipsis;
            overflow: hidden;
            height: 120px;
            width: 100%;
            padding: 10px 0px 30px 10px;
        }

        .num2 {
            margin-left: 20px;
            border: 1px dashed #6d6666;
            padding: 10px 10px 10px 10px;
            height: 150px;
        }

            .num2 img {
                width: 40%;
                border-radius: 30px 30px 30px 30px;
                float: right;
            }

        .num3 {
            text-align: right;
            margin-top: 10px;
            margin-left: 20px;
            border: 1px dashed #6d6666;
            padding: 10px 10px 10px 10px;
            height: 150px;
        }

            .num3 img {
                width: 40%;
                border-radius: 30px 30px 30px 30px;
                float: right;
            }

            .num3 a {
                text-align: center;
            }

        #foot {
            background-color: #6d6666;
            height: 60px;
            width: 100%;

   
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
            <a href="singlemusic.jsp">单曲</a>
        </div>
        <div class="SiMusic">
            <a href="#">专栏</a>
        </div>
        <div class="SiMusic">
            <a href="#">关于</a>
        </div>

        <div class="login">
			欢迎用户：<a href="http://localhost:8080/audiosys/userpage.jsp"><s:property value="userid"/></a>   
        </div>
    </div>
    <div id="show">
        
        <a href="#">
            <img alt="show" src="Resources/QVYhjeoG2fc.jpg" style="width:100%;height:100%;
          border-radius:20px 20px 20px 20px;" />
        </a>
    </div>
    <div id="radiostation">
        <div class="tiltle">
            <h3>&nbsp;&nbsp;音乐电台</h3>
            <div class="stations">
                <a href="#">更多»</a>
                <a href="#">民谣</a>
                <a href="#">金属</a>
                <a href="#">英伦</a>
                <a href="#">流行</a>
                <a href="#">氛围</a>
               
            </div>
        </div>
        <div id="container"></div>
        <div class="radio grid">
                <div class="first col-sm-8 col-xs-8">
                    <figure class="effect-zoe">
                        <img type="button" class="player-play" src="Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg" style="width:100%;height:100%" />
                        <figcaption>
                            <h2>Marry <span>you</span></h2>
                            <span class="icon-heart"></span>
                            <span class="fa-play"></span>
                            <span class="icon-eye"></span>                           
                            <span class="icon-paper-clip"></span>
                            <span class="fa-play"></span>
                          
                           
                        </figcaption>
                    </figure>
                        <!--<img type="button" class="player-play" src="Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg" style="width:100%;height:100%" />
                        <a href="player.html">&nbsp;&nbsp;&nbsp;&nbsp;一缕阳光</a>-->
                </div>
                <div class="second col-sm-4 col-xs-4">
                    <figure class="effect-zoe">
                        <img src="Resources/1427975779_1436653066_20977_sProdImgNo_7.jpg" />
                        <figcaption>
                            <span class="fa fa-play" style="color:#000000"></span>
                            <h2>Marry <span>you</span></h2>
                            <span class="icon-heart"></span>
                            <span class="icon-eye"></span>
                            <span class="icon-paper-clip"></span>
                           

                        </figcaption>
                    </figure>
                   <!-- <a href="#"><img src="Resources/1427975779_1436653066_20977_sProdImgNo_7.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;123</a>-->
                </div>
                <div class="third col-sm-4 col-xs-4">
                    <figure class="effect-zoe">
                        <img src="Resources/2013827142527796778012.jpg" />
                      
                        <figcaption>
                            <h2>一缕 <span>阳光</span></h2>
                            <span class="icon-heart"></span>
                            <span class="icon-heart"></span>
                            <span class="icon-eye"></span>
                            <span class="icon-paper-clip"></span>
                           

                        </figcaption>
                    </figure>
                    <!--<a href="#"><img src="Resources/2013827142527796778012.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;456</a>-->
                </div>
            </div>
    </div>
    <div id="radiostation">
        <div class="tiltle">
            <h3>&nbsp;&nbsp;原创推荐</h3>
            <div class="stations">
                <a href="#">更多»</a>
                <a href="#">单曲</a>
                <a href="#">专栏</a>
                               
            </div>
        </div>
        <div id="container"></div>
        <div class="radio grid">
                <div class="first col-sm-8 col-xs-8">
                    <figure class="effect-zoe">
                        <img type="button" class="player-play" src="Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg" style="width:100%;height:100%" />
                        <figcaption>
                            <h2>Marry <span>you</span></h2>
                            <span class="icon-heart"></span>
                            <span class="fa-play"></span>
                            <span class="icon-eye"></span>                           
                            <span class="icon-paper-clip"></span>
                            <span class="fa-play"></span>
                          
                           
                        </figcaption>
                    </figure>
                        <!--<img type="button" class="player-play" src="Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg" style="width:100%;height:100%" />
                        <a href="player.html">&nbsp;&nbsp;&nbsp;&nbsp;一缕阳光</a>-->
                </div>
                <div class="second col-sm-4 col-xs-4">
                    <figure class="effect-zoe">
                        <img src="Resources/1427975779_1436653066_20977_sProdImgNo_7.jpg" />
                        <figcaption>
                            <span class="fa fa-play" style="color:#000000"></span>
                            <h2>Marry <span>you</span></h2>
                            <span class="icon-heart"></span>
                            <span class="icon-eye"></span>
                            <span class="icon-paper-clip"></span>
                           

                        </figcaption>
                    </figure>
                   <!-- <a href="#"><img src="Resources/1427975779_1436653066_20977_sProdImgNo_7.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;123</a>-->
                </div>
                <div class="third col-sm-4 col-xs-4">
                    <figure class="effect-zoe">
                        <img src="Resources/2013827142527796778012.jpg" />
                      
                        <figcaption>
                            <h2>一缕 <span>阳光</span></h2>
                            <span class="icon-heart"></span>
                            <span class="icon-heart"></span>
                            <span class="icon-eye"></span>
                            <span class="icon-paper-clip"></span>
                           

                        </figcaption>
                    </figure>
                    <!--<a href="#"><img src="Resources/2013827142527796778012.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;456</a>-->
                </div>
            </div>
    </div>    
    <div id="foot">
    </div>
</body>
</html>
