

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>我的空间主页页面</title>
    </head>
    <body background="img/zhuye.jpg">
        <br><br><br>
            <table border="1" bordercolor="yellow">
                <tr   align="center">
                    <td rowspan="2" width="7.9%"><br></td>
                    <td colspan="4" width="97%">
                        <div id="blink" align="center">
                            <font size="6"><b><font face="Berlin Sans FB Demi" style="background-color: rgb(255, 0, 255);">个人空间管理系统</font><br></b></font>
                        </div>
                        <script language="javascript">
                            function changeColor(){
                                var color="yellow|green|blue|gray|pink";
                                color=color.split("|");
                                document.getElementById("blink").style.color=color[parseInt

                                    (Math.random() * color.length)];
                            }
                            setInterval("changeColor()",200);
                        </script>
                    </td>
                    <td align="center"rowspan="2" bgcolor="pink" ><br></td>
                </tr>
                <tr>
                    <td align="center">
                        <a href="zhuye.jsp"><image src="img/Globe.ico"> <b>主页</b></a>
                    </td>

                    <td  align="center">
                        <a href="add.jsp"><b>留言板</b></a>
                    </td>
                    <td  align="center">
                        <a href="Photo_wall.jsp"> <b>相册</b></a>
                    </td>
                </tr>
                <tr height="550">
                    <td width="7.7%"> 
                        <div style=""></div> 
                        <b> 
                            <font size="4" color="red"> 
                                </font></b><br><br><br> 
                       
                            <a href="login.jsp">登录：</a><br><br><br><br><br> 
                            <a href="zhuye.jsp"> 主页</a><br><br><br><br><br> 
                            <a href="Photo_wall.jsp">照片墙</a><br><br><br><br> 
                            <a href="add.jsp"> 留言板</a><br><br><br><br> 
                            <a href="login.jsp"> 退出：</a><br> 
                         
 
                    </td>

                    <td colspan="4">
                        <script type="text/javascript">
                            var  result
                            function addWish(){
                                result=document.getElementById("result");
                                var color=document.getElementById("color").value;
                                var wish=document.getElementById("wish").value;
                                var card=document.createElement("div");
                                card.innerHTML=wish;
                                card.style.backgroundColor=color;
                                // card.onclick=closeCard;
                                //card.onmouseover=closeAllCard;
                                card.onmouseover=changecolor;
                                card.onmousedown=mouseDown;
                                card.onmousemove=mouseMove;
                                card.onmouseup=mouseUp;
                                card.onmouseout=mouseOut;
                                result.appendChild(card);
                                card.style.position="absolute";
                                card.style.width=120+"px";
                                card.style.height=80+"px";
                                card.style.border="solid 1px black";
                                card.style.left=parseInt(Math.random()*600)+"px";
                                card.style.top=parseInt(Math.random()*400)+30+"px";
                            }
                            function closeCard(){
                                //this.style.display="none";
                                // result.removeChild(this);
                                this.parentNode.removeChild(this);
                            }
                            function closeAllCard(){
                                var divs=document.getElementById("result").getElementsByTagName("div");
                                var len=divs.length;
                                for(var i=0;i<len;){
                                    result.removeChild(divs[i]);
                                }

                            }
                            function changecolor(){
                                var color=["red","green","blue","black","white","pink"];
                                var i=parseInt(Math.random()*500)%6;
                                this.style.backgroundColor=color[i];
                            }
                            var mousePos=[];
                            var movable;
                            function mouseDown(evt){
                                movable=true;
                                var mevt=window.event || evt;
                                var X= (document.body.scrollLeft ||document.documentElement.scrollLeft)+mevt.clientX;
                                var Y=(document.body.scrollLeft ||document.documentElement.scrollLeft)+mevt.clientY;
                                mousePos=[X,Y];
                                //alert(X+"px"+Y+"px");
                            }
                            function mouseMove(evt){
                                if(movable){
                                    var mevt=window.event || evt;
                                    var X= (document.body.scrollLeft ||document.documentElement.scrollLeft)+mevt.clientX;
                                    var Y=(document.body.scrollLeft ||document.documentElement.scrollLeft)+mevt.clientY;
                                    this.style.left=this.offsetLeft+X-mousePos[0]+"px";
                                    this.style.top=this.offsetTop+Y-mousePos[1]+"px";
                                    mousePos=[X,Y];
                                }
                                else{
                                    return;
                                }
                            }
                            function mouseUp(){
                                movable=false;
                            }
                            function mouseOut(){
                                movable=false;
                            }
                        </script>
                        <center>
                            颜色：
                            <select id="color">
                                <option>red</option>
                                <option>blue</option>
                                <option>green</option>
                            </select>
                            愿望：
                            <input id="wish" type="text">
                            <input type="button" value="许愿" onclick="addWish()">
                            <div id="result">
                            </div>
                        </center>
                        <br><br><br><br>
                    </td>

                    <td align="center" background="green">
                        <script language=JavaScript>

                            var x = 0
                            Music = new Array()
                            <!-- [Step1]: 这里可以按序增加播放的Midi音乐 -->
                            Music[1] = "   Music01.mid"
                            Music[2] = "   Music02.mid"
                            Music[3] = "   Music03.mid"


                            function MidiMusicList(){
                                <!-- [Step2]: 在此能够设置文本框的缺省文本 -->
                                document.MidiMusic.typein.value=" 请按键选择 Midi 格式的音乐 "
                            }

                            function PlayMusic(){
                                <!-- [Step3]: 这里可以更改Midi音乐所在的绝对位置 -->
                                if (x != 0){location.href='Music0'+x+'.mid'}
                            }

                            function FirstMusic(){
                                x=1;document.MidiMusic.typein.value=Music [x]
                            }

                            function EndMusic(){
                                x=Music.length-1;document.MidiMusic.typein.value=Music [x]
                            }

                            function PrevoiusMusic(){
                                if (x>1){ x--;document.MidiMusic.typein.value=Music [x];}
                            }

                            function NextMusic(){
                                var max= Music.length-1
                                if (x<max){ x++;document.MidiMusic.typein.value=Music [x];}
                            }

                        </script>
                        <!-- 案例代码1结束 -->
                        <hr width=1>
                        <!-- 案例代码2开始 -->

                        <form Name="MidiMusic">
                            <!-- [Step4]: 在此可以更改文本框的列长度-->
                            <input Name="typein" type="text" size=10 align=middle>
                            <br>
                            <font size=5 face="Helvetica">
                                <input type=Button Value="第一首"   align=middle onclick="FirstMusic()"    >
                                <input type=Button Value="上一首"    align=middle onclick="PrevoiusMusic()" >
                                <input type=Button Value="播放"      Align=top  onclick="PlayMusic()"     >
                                <input type=Button Value="下一首"    align=middle onclick="NextMusic()"     >
                                <input type=Button Value="最后一首"   align=middle onclick="EndMusic()"      >
                            </font>
                        </form>

                        <!-- 案例代码2结束 -->

                    </td>
                </tr>
            </table>
            <center><a href="login.jsp">登陆其他用户</a></center>
    </body>
</html>