<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>单曲</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link href="content/bootstrap.css" rel="stylesheet" />
    <link href="content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Resources/head.css" rel="stylesheet" />
    <link href="content/font-awesome.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery-1.8.3.min.js"></script>
    <link rel="Stylesheet" type="text/css" href="loginDialog.css" />
    <link href="login.html" rel=" next" />
    <link rel="stylesheet" type="text/css" href="head.css" />
    <script src="jwplayer-7.2.2/jwplayer.js"></script>
    <link href="skins/five.css" rel="stylesheet" />
    <script src="content/jquery-2.1.4.js"></script>
    <link href="Resources/component.css" rel="stylesheet" />
    <link href="Resources/demo.css" rel="stylesheet" />
    <link href="Resources/normalize.css" rel="stylesheet" />

    <script type="text/javascript">jwplayer.key = "887zsTo75XCpGDcUtoiDKQvnZEgpb083zlSFQg==";</script>
    <script type="text/javascript">
        var thePlayer;  //保存当前播放器以便操作
        $(function() {
            thePlayer = jwplayer('container').setup({
                flashplayer: 'jwplayer-7.2.2/jwplayer.flash.swf',
                file: 'Resources/Bruno Mars - Marry You.mp3',
                image: "Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg",
                //width: 500,
                //height: 350,
                dock: false,
                //skin: "skins/five.css",
            });

            //播放 暂停
            $('.player-play').click(function() {
                if (thePlayer.getState() != 'PLAYING') {
                    thePlayer.play(true);
                    this.value = '暂停';
                } else {
                    thePlayer.play(false);
                    this.value = '播放';
                }
            });

            //停止
            $('.player-stop').click(function() { thePlayer.stop(); });

            //获取状态
            $('.player-status').click(function() {
                var state = thePlayer.getState();
                var msg;
                switch (state) {
                    case 'BUFFERING':
                        msg = '加载中';
                        break;
                    case 'PLAYING':
                        msg = '正在播放';
                        break;
                    case 'PAUSED':
                        msg = '暂停';
                        break;
                    case 'IDLE':
                        msg = '停止';
                        break;
                }
                alert(msg);
            });

            //获取播放进度
            $('.player-current').click(function() { alert(thePlayer.getPosition()); });

            //跳转到指定位置播放
            $('.player-goto').click(function() {
                if (thePlayer.getState() != 'PLAYING') {    //若当前未播放，先启动播放器
                    thePlayer.play();
                }
                thePlayer.seek(30); //从指定位置开始播放(单位：秒)
            });

            //获取视频长度
            $('.player-length').click(function() { alert(thePlayer.getDuration()); });
        });
    </script>
    <style>
        #container {
            margin: auto;
            margin-top: auto;
        }
    </style>

    <style type="text/css">
         a {
            color: black;
            list-style: none;
        }

            a:hover {
                color: #e23636;
                text-decoration: none;
            }
        #radiostation {
            margin-top: 10px;
            margin-left: 15%;
            width: 950px;
            margin-right: 5%;
            height: 450px;
        }

        .tiltle {
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

        .pagination {
            padding: 2px;
            margin-left: 35%;
        }

            .pagination ul {
                margin: 0;
                padding: 0;
                text-align: left; /*Set to "right" to right align pagination interface*/
                font-size: 12px;
            }

            .pagination li {
                list-style-type: none;
                display: inline;
                padding-bottom: 1px;
            }

            .pagination a, .pagination a:visited {
                padding: 0 5px;
                border: 1px solid #6d6666;
                text-decoration: none;
                color: #6d6666;
            }

                .pagination a:hover, .pagination a:active {
                    border: 1px solid #6d6666;
                    color: #000;
                    background-color: lightyellow;
                }

            .pagination li.currentpage {
                font-weight: bold;
                padding: 0 5px;
                border: 1px solid navy;
                background-color: #6d6666;
                color: black;
            }

            .pagination li.disablepage {
                padding: 0 5px;
                border: 1px solid #6d6666;
                color: #929292;
            }

            .pagination li.nextpage {
                font-weight: bold;
            }

            * html .pagination li.currentpage, * html .pagination li.disablepage { /*IE 6 and below. Adjust non linked LIs slightly to account for bugs*/
                margin-right: 5px;
                padding-right: 0;
            }

        #foot {
            background-color: #6d6666;
            height: 60px;
            width: 100%;
            margin-top: 40px;
        }

        #originalpush {
            margin-top: 20px;
            margin-left: 15%;
            margin-right: 15%;
            height: 1200px;
            width: 950px;
        }

        .num {
            height: 280px;
            margin-top: 20px;
            padding-left: 0px;
            padding-bottom: 4%;
        }

        .num1 {
            border: 1px dashed #6d6666;
            height: 245px;
            width: 60%;
            padding-top: 10px;
            margin-left: 20px;
            margin-bottom: 10px;
        }

            .num1 img {
                float: left;
                height: 220px;
                width: 45%;
                display: inline;
            }

        .num .til {
            float: left;
            width: 50%;
            text-align: left;
            padding: 10px 0 0px 40px;
            font-size: 20px;
            display: inline;
        }

        .num1 .cont {
            float: left;
            padding: 10px 0px 30px 10px;
            height: 100px;
            width: 50%;
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
            height: 400px;
            width: 35%;
            float: right;
        }

        #foot {
            background-color: #6d6666;
            height: 60px;
            width: 100%;
        }

        li {
            list-style: none;
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
        <div id="login" class="col-sm-8">

        </div>

    </div>


  


    <div id="radiostation">
        <div class="tiltle">

        </div>
        <div class="radio" style="margin-top:40px;">
            <div class="first col-sm-8">
                <div id="container"></div>
                <!--<a href="#"><img src="Resources/83f596c9gw1ewx44gl0rhj20ia0r97cc.jpg" /></a>-->
            </div>
            <div class="text1" style="padding-top:85px;font-size:20px;margin-left:50px;">
                <p><a>musicname</a></p>
                <p><a>by *** author</a></p><br />
            </div>
            <div class="text2">
                <p>
                    <a>
                        "单曲简介单曲简介单曲简介单曲简介单曲简介
                        单曲简介单曲简介单曲简介单曲简介单曲简介
                        单曲简介单曲简介单曲简介单曲简介单曲简介
                        单曲简介单曲简介单曲简介单曲简介单曲简介
                        单曲简介单曲简介单曲简介单曲简介单曲简介"
                    </a>
                </p>
            </div>
            <div class="text3" style="text-align:end;">
                <br /><p>2015/10/25</p>
            </div>
        </div>
    </div>





    <div id="originalpush">
        <div class="num">
            <div class="num1 col-sm-6">
                <div class="col-sm-12">
                    <div class="img">
                        <a href="#"><img src="Resources/2013827142527796778012.jpg" /></a>
                    </div>
                    <div class="til">
                        <a href="#">立场</a> <br /><small style="color:#6d6666;font-size:20px;">--这位太太</small>
                    </div>
                    <div class="cont">
                        <p>
                            "memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);


                            "dos header info:\n");
                            printf("e_magic=");
                            memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);
                            puts(cBuff);s"
                        </p>
                    </div>
                </div>
            </div>
            <div class="num2 col-sm-5">
                <div class="til">
                    推荐单曲
                </div><br>
                <li>
                    <a href="#" style="font-size:18px;">
                        <br> <img src="Resources/QVYhjeoG2fc.jpg" style="height:45px;width:45px;margin-left:25px;"/ >
                        Fade&nbsp;&nbsp;--电音
                    </a>
                </li>
                <li>
                    <a href="#" style="font-size:18px;">
                        <br> <img src="Resources/1427975779_1436653066_20977_sProdImgNo_7.jpg" style="height:45px;width:45px;margin-left:25px;"/ >
                        Marry You&nbsp;&nbsp;
                    </a>
                </li>
            </div>
        </div>
        <div class="num" style="padding-top:12px;">
            <div class="num1 col-sm-6">
                <div class="col-sm-12">
                    <div class="img">
                        <a href="#"><img src="Resources/1392802497_1436653066_25300_sProdImgNo_7.jpg" /></a>
                    </div>
                    <div class="til">
                        <a href="#">Seasons</a> <br /><small style="color:#6d6666;font-size:20px;">--</small>
                    </div>
                    <div class="cont">
                        <p>
                            "memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);


                            "dos header info:\n");
                            printf("e_magic=");
                            memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);
                            puts(cBuff);s"
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="num" style="padding-top:12px;">
            <div class="num1 col-sm-6">
                <div class="col-sm-12">
                    <div class="img">
                        <a href="#"><img src="Resources/83f596c9gw1ewx44gl0rhj20ia0r97cc.jpg" /></a>
                    </div>
                    <div class="til">
                        <a href="#">立场</a> <br /><small style="color:#6d6666;font-size:20px;">--这位太太</small>
                    </div>
                    <div class="cont">
                        <p>
                            "memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);


                            "dos header info:\n");
                            printf("e_magic=");
                            memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);
                            puts(cBuff);s"
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="num" style="padding-top:12px;">
            <div class="num1 col-sm-6">
                <div class="col-sm-12">
                    <div class="img">
                        <a href="#"><img src="Resources/1427975779_1436653066_20977_sProdImgNo_7.jpg" /></a>
                    </div>
                    <div class="til">
                        <a href="#">立场</a> <br /><small style="color:#6d6666;font-size:20px;">--这位太太</small>
                    </div>
                    <div class="cont">
                        <p>
                            "memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);


                            "dos header info:\n");
                            printf("e_magic=");
                            memcpy(cName, &pNtH->FileHeader, 8);
                            puts(cName);
                            printf("e_lfanew=");
                            wsprintf(cBuff, "%04lX", pDH->e_lfanew);
                            puts(cBuff);s"
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="pagination">
            <ul>
                <li class="disablepage">上一页</li>
                <li class="currentpage">1</li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">9</a>...</li>
                <li><a href="#">15</a></li>
                <li><a href="#">16</a></li>
                <li class="nextpage"><a href="#">下一页</a></li>
            </ul>
        </div>
    </div>

    <div id="foot">

    </div>


</body>
</html>
