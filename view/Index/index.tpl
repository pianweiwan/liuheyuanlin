{include file="/view/layout/header.tpl"}
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>六合园林有限公司-官网</title>
    <meta name="Keywords" content="园林公司,河南绿化,园林绿化,绿洲,河南园林,河南苗木,景观设计,郑州苗圃" >
    <meta name="Description" content="绿化 园林" >

    <script src="/static/js/jquery.js" type="text/javascript"></script>
    <script src="/static/js/basis.js" type="text/javascript"></script>
    <script src="/static/js/dd_belatedpng_0.0.8a.js" ></script>
    <!--[if lte IE 6]>

    {literal}


    <![endif]-->
</head>
<body>

<style type="text/css">


    .menu {font-family: verdana, sans-serif;position:relative;font-size:0.85em;width:700px;height:43px;margin:auto; z-index:99}
    .menu ul {padding:0;margin:0;list-style-type: none;width:700px;}
    .menu ul li {float:left;position:relative;}
    .menu ul li a, .menu ul li a:visited {display:block;text-decoration:none; text-align:center;width:96px;height:43px;line-height:43px;color:#606060;font-size:16px;font-family:'Microsoft YaHei',SimHei,sans-serif;}
    * html .menu ul li a, .menu ul li a:visited {width:96px;w\idth:96px; color:#606060}


    .menu ul li .last{color:#ffffff;padding-right:10px;font-family:'Microsoft YaHei',SimHei,sans-serif;background:url('') no-repeat right center;}
    .menu ul li.currclass a{display:block;color:#FF0000;width:96px;height:43px;line-height:43px;font-size:16px;}
    .menu ul li.currclass a:hover{ color:#FF0000}

    .menu ul li dl {display: none; text-align:center; z-index:99; margin-left:-18px;}

    /* specific to non IE browsers */
    .menu ul li:hover dl dd dl {display: none;}
    /*.menu ul li:hover dl dd a.drop {-moz-opacity:.66;filter:alpha(opacity=66);opacity:.66;}*/
    .menu ul li:hover dl dd:hover dl {display:block; position:absolute; left:163px; top:0;width:145px;}
    .menu ul li:hover dl dd:hover dl.right {left:-143px;}


    .menu ul li:hover dl {display:block;position:absolute;left:0; width:145px;}
    .menu ul li:hover dl dd {text-align:center; background:url('/static/images/menu1_line.png') no-repeat center bottom;width:150px;}
    .menu ul li:hover dl dd a {display:block;color:#666;height:auto; height:38px;line-height:38px;width:139px;font-size:14px;}
    .menu ul li:hover dl dd a:hover {color:#000;background:/static/images/menu1_ok.png repeat center center;width:139px;}

    #nav_ul li span{height:43px;overflow:hidden;display:block;}
    #nav_ul a.nav_f{float:left;height:43px;line-height:43px;font-size:16px;font-family:'Microsoft YaHei',SimHei,sans-serif;}
    #nav_ul a.nav_f i{font-size:14px;display:block;}
    #nav_ul a.nav_f:hover{color: #E30F04;}

</style>



<!--[if lte IE 6]>
<style type="text/css">
    .menu ul li a:hover {color:#fff;font-size:14px;}
    .menu ul li a:hover dl {display:block;position:absolute;top:3em;left:0;background:#fff;margin-top:0;}
    .menu ul li a:hover dl dd a {display:block;background:#7b5f58;color:#fff;height:auto;line-height:1.5em;padding:5px 10px;width:80px;w\idth:80px;width:80px;font-size:14px;}
    .menu ul li a:hover dl dd a:hover {background:#c9c9a7;color:#000;}
</style>
<![endif]-->
<script>$('.menu ul li:eq(0)').addClass('currclass')</script>

<script type ="text/javascript" >
    $(function () {
        if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/Android/i))
        {
            $(".bannerwap").css("display", "block")
            $(".bannerwch").remove();
            //  子页
            // $(".mainBanner1").remove();
            // $(".mainBanner").css("display", "block")

        } else {
            $(".bannerwch").css("display", "block")
            $(".bannerwap").remove();
            //  子页
            //$(".mainBanner").remove();
            // $(".mainBanner1").css("display", "block")
        }
    });
</script>


<!--大图切换---begin-->
<script src="/static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="/static/js/jquery.kinmaxshow-1.0.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function(){
        $("#kinMaxShow").kinMaxShow({
            height:430,
            button:{
                switchEvent:'mouseover',//按钮鼠标切换事件 可选事件 click、mouseover
                showIndex:false,//按钮上是否显示索引数字，从1开始，默认不显示
                //按钮样式
                //正常 按钮样式  支持常规CSS样式，方法同jQuery css({key:val,……})
                normal:{width:'14px',height:'14px',lineHeight:'14px',right:'230px',bottom:'10px',fontSize:'10px',background:"#cccaca",border:"1px solid #ffffff",color:"#666666",textAlign:'center',marginRight:'8px',fontFamily:"Verdana",float:'left',display:'none'},
                focus:{background:"#CC0000",border:"1px solid #FF0000",color:"#000000"}//当前 按钮样式
            }
        });
    });

</script>
<!--大图切换---end-->
<style>
    html { overflow:-moz-scrollbars-vertical; overflow-y:scroll; overflow-x:hidden; }
    .bannerwch{width:1430px;margin:0 auto;position:relative;left:50%;margin-left: -715px;}
    .bannerwap{width:960px;margin:0 auto;position:relative;left:50%;margin-left: -480px;}
</style>

<div class="slideshow" style="height: 500px; margin-top:15px;overflow: hidden">
    <div class="slide"><img src="/static/images/img/1.png"></div>
    <div class="slide"><img src="/static/images/img/2.png"></div>
    <div class="slide"><img src="/static/images/img/3.png"></div>
    <div class="slide"><img src="/static/images/img/4.png"></div>

</div>


<table cellspacing="0" cellpadding="0" width="100%" height="51" align="center" border="0" style="margin:auto;">
    <tr><td><img src="/static/picture/flash_foot.jpg" width="100%" height="51"></td></tr>
</table>

<table cellspacing="0" cellpadding="0" width="1000" align="center" border="0" style="margin:auto;margin-top:20px;">
    <tr><td height="36"><img src="/static/picture/tit1.png" width="398" height="36" /></td></tr>
    <tr><td height="15"></td>
    <tr>
        <td width="1000">

            <div class="pic_row">

                <a href="/list/?12_1.html"><img src="/static/picture/201503230900315045.jpg" width="247" height="132"><h3 style="margin-top: 0px;">设计案例 <div><em>Design </em><span>More&gt;&gt;</span></div></h3></a>

                <a href="/list/?11_1.html"><img src="/static/picture/2015032309005672.jpg" width="247" height="132"><h3 style="margin-top: 0px;">工程案例 <div><em>Engineering </em><span>More&gt;&gt;</span></div></h3></a>

                <a href="/about/?3.html"><img src="/static/picture/201503230902295224.jpg" width="247" height="132"><h3 style="margin-top: 0px;">苗圃基地 <div><em>Nursery </em><span>More&gt;&gt;</span></div></h3></a>

                <a href="/list/?4_1.html"style="margin-right:0px;"><img src="/static/picture/20150323091323730.jpg" width="247" height="132"><h3 style="margin-top: 0px;">园林资材 <div><em>Materials </em><span>More&gt;&gt;</span></div></h3></a>

            </div>
        </td>
    </tr>
</table>
{/literal}
<table cellspacing="0" cellpadding="0" width="1000" align="center" border="0" style="margin:auto;margin-top:35px;">
    <tr><td height="36" colspan="2"><img src="/static/picture/tit2.png" width="317" height="36" /></td></tr>
    <tr><td height="15" colspan="2"></td>
    <tr>
        <td width="500" style="background-color:#f2f2f2;border-radius: 8px 0 0 8px;" valign="top">
            <style>
                {literal}
                /*----滑动----*/
                .dis  {}
                .undis{DISPLAY:none;}
                /*----滑动----*/

                .wch1{cursor:pointer;color:#ff0000;}
                .wch2{cursor:pointer;color:#606060;}
                {/literal}
            </style>
            <script language=javascript type=text/javascript>
                {literal}
                function g1(o){return document.getElementById(o);}
                function HoverLi1(n){
                    for(var i=1;i<=2;i++){g1('tbc_0'+i).className='undis';g1('sel'+i).className='wch2';}g1('tbc_0'+n).className='dis';g1('sel'+n).className='wch1';
                }
                {/literal}
            </script>
            <div style="width:470px;margin:auto;margin-top:15px;color:#606060;font-size:14px;font-family:'Microsoft YaHei',SimHei,sans-serif;">
            <span style="float:left; width:130px;">
            <a href="/list/?19_1.html" target="_blank"><span
                        id="sel1" onmouseover="HoverLi1(1);" class="wch1">企业动态</span></a> / <a href="/list/?20_1.html" target="_blank"><span
                            id="sel2" onmouseover="HoverLi1(2);" class="wch2">行业新闻</span></a></span><span style="float:left">...............................................................................</span>
                <a href="/list/?5_1.html" target="_blank" style="color:#606060; float:right" onMouseOver="this.style.color='#ff0101'"  onMouseOut="this.style.color='#606060'" >More>></a>
            </div>
            <div style=" clear:both;height:15px;"></div>
            <DIV class=dis id=tbc_01>
                <div style="width:470px;margin:auto;">

                    <a href="/content/?946.html" target="_blank"  title="贺我公司中标吉利区黄河湿地园区东入口和静思园建设工程施工项目">
                        <div style="width:100%; height:100px;color:#606060;font-size:14px;">
                            <div style="float:left; width:143px;margin-right:7px;"><img src="/static/picture/201605240958091489.png" width="143" height="107" /></div>
                            <div style="float:left; width:320px;margin-top:5px;">
                                <div style="float:left;width:230px;font-weight:bold;">贺我公司中标吉利区黄河湿地园...</div>
                                <div style="float:right;width:90px;">[2016-05-24]</div>
                            </div>
                            <div style="height:40px;"></div>
                            <div style="float:left;width:220px;line-height:22px;">河南省机电设备招标股份有限公司受洛阳市吉泰实业有限公司委托，就吉利区黄河湿地园区...</div>
                            <div style="float:right;margin-top:45px;" onMouseOver="this.style.color='#3489fc'" onMouseOut="this.style.color='#606060'">查看更多>></div>
                        </div>
                    </a>

                </div>

                <div style="clear:both;height:10px;"></div>
                <div style="width:470px;margin:auto">




                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?875.html" target="_blank"  title="贺我公司董事长史屹峰通过教授级高级工程师任职资格评审" style="color:#606060;">贺我公司董事长史屹峰通过教授级高级工程师...</a>
                     </span>
                        <span style="float:right">[2015-12-12]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?868.html" target="_blank"  title="热烈庆祝河南省绿洲园林有限公司乔迁之喜" style="color:#606060;">热烈庆祝河南省绿洲园林有限公司乔迁之喜</a>
                     </span>
                        <span style="float:right">[2015-11-30]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?945.html" target="_blank"  title="绿洲设计院——引领人文景观 缔造绿色空间" style="color:#606060;">绿洲设计院——引领人文景观 缔造绿色空间</a>
                     </span>
                        <span style="float:right">[2016-05-13]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?932.html" target="_blank"  title="招聘   园林技术员（实习生）" style="color:#606060;">招聘   园林技术员（实习生）</a>
                     </span>
                        <span style="float:right">[2016-05-03]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?931.html" target="_blank"  title="造价人员预算审图，就两方面的事儿！" style="color:#606060;">造价人员预算审图，就两方面的事儿！</a>
                     </span>
                        <span style="float:right">[2016-04-21]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?929.html" target="_blank"  title="最详细的工程时间期限汇总，珍藏！" style="color:#606060;">最详细的工程时间期限汇总，珍藏！</a>
                     </span>
                        <span style="float:right">[2016-04-19]</span>
                    </div>


                </div>
            </DIV>
            <DIV class=undis id=tbc_02>
                <div style="width:470px;margin:auto;">

                    <a href="/content/?892.html" target="_blank"  title="61项证书取消！景观设计师证也取消？别考了！">
                        <div style="width:100%; height:100px;color:#606060;font-size:14px;">
                            <div style="float:left; width:143px;margin-right:7px;"><img src="/static/picture/20160127152022307.jpg" width="143" height="107" /></div>
                            <div style="float:left; width:320px;margin-top:5px;">
                                <div style="float:left;width:230px;font-weight:bold;">61项证书取消！景观设计师证...</div>
                                <div style="float:right;width:90px;">[2016-01-27]</div>
                            </div>
                            <div style="height:40px;"></div>
                            <div style="float:left;width:220px;line-height:22px;">　1月13日国务院常务会议的第一个议题，其“阵仗”可谓不同寻常：中央编办、国务院法制...</div>
                            <div style="float:right;margin-top:45px;" onMouseOver="this.style.color='#3489fc'" onMouseOut="this.style.color='#606060'">查看更多>></div>
                        </div>
                    </a>

                </div>

                <div style="clear:both;height:10px;"></div>
                <div style="width:470px;margin:auto">




                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?863.html" target="_blank"  title="《建筑法》修改已启动 住建部筹划建筑业改革大会" style="color:#606060;">《建筑法》修改已启动 住建部筹划建筑业改...</a>
                     </span>
                        <span style="float:right">[2015-11-16]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?818.html" target="_blank"  title="评论：人性化是智慧城市指导规划的落脚点" style="color:#606060;">评论：人性化是智慧城市指导规划的落脚点</a>
                     </span>
                        <span style="float:right">[2015-08-25]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?842.html" target="_blank"  title="评论：以人为本 打造内外兼修的绿色建筑" style="color:#606060;">评论：以人为本 打造内外兼修的绿色建筑</a>
                     </span>
                        <span style="float:right">[2015-09-14]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?817.html" target="_blank"  title="玛吉阿米——仓央嘉措的“意外遗产”" style="color:#606060;">玛吉阿米——仓央嘉措的“意外遗产”</a>
                     </span>
                        <span style="float:right">[2015-08-24]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?815.html" target="_blank"  title="天安门广场7年后再现山水花坛 延续至国庆节后" style="color:#606060;">天安门广场7年后再现山水花坛 延续至国庆...</a>
                     </span>
                        <span style="float:right">[2015-08-21]</span>
                    </div>



                    <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/content/?813.html" target="_blank"  title="世界遗产周口店北京人遗址 猿人洞将告别日晒雨淋" style="color:#606060;">世界遗产周口店北京人遗址 猿人洞将告别日...</a>
                     </span>
                        <span style="float:right">[2015-08-18]</span>
                    </div>


                </div>
            </DIV>

        </td>
        <td width="20"></td>
        <td width="480" height="337" style="background-color:#f2f2f2;border-radius: 0 8px 8px 0;" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="340" align="center" valign="top">
                        <div style="width:300px;margin-top:20px;">
                            <div id="wx1">
                                <a href="/list/?45_1.html" target="_blank"><div style="font-size:14px;color:#006cff;text-align:left;margin-left:20px;margin-bottom:10px;">景观植物</div></a>

                                <a href="/content/?936.html" target="_blank"  title="榆叶梅"><img src="/static/picture/201605111540387657.jpg" width="147" height="92" /></a>

                                <a href="/content/?935.html" target="_blank"  title="碧桃"><img src="/static/picture/201605111523459679.jpg" width="147" height="92" /></a>

                                <div style="height:20px;"></div>
                                <a href="/list/?43_1.html" target="_blank"><div style="font-size:14px;color:#006cff;text-align:left;margin-left:20px;margin-bottom:5px;">景观设计</div></a>
                                <div style="float:left;width:250px;">

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?860.html" target="_blank"  title="秋天那么美，想去看看吗？" style="color:#606060;">秋天那么美，想去看看吗？</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?797.html" target="_blank"  title="超实用！5条建议让设计师和非设计师更好地相处" style="color:#606060;">超实用！5条建议让设计师和非设...</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?792.html" target="_blank"  title="设计气候敏感性城市的10种方法" style="color:#606060;">设计气候敏感性城市的10种方法</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?781.html" target="_blank"  title="景观种植配植典型方式" style="color:#606060;">景观种植配植典型方式</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?887.html" target="_blank"  title="老家的庭院，生活&#8226;风水&#8226;诗意" style="color:#606060;">老家的庭院，生活&#8226;...</a>
                                    </div>

                                </div>
                                <div style="float:right;width:50px;margin-top:92px;text-align:right;font-family:'宋体';font-weight:bold;font-size:16px;cursor:pointer" onMouseOver="this.style.color='#3489fc'" onMouseOut="this.style.color='#606060'" onclick="wx1.style.display='none';wx2.style.display='block';">
                                    >>
                                </div>
                            </div>
                            <div id="wx2" style="display:none">
                                <a href="/list/?45_1.html" target="_blank"><div style="font-size:14px;color:#006cff;text-align:left;margin-left:20px;margin-bottom:10px;">景观植物</div></a>






                                <a href="/content/?934.html" target="_blank"  title="桃花"><img src="/static/picture/201605111513252795.jpg" width="147" height="92" /></a>



                                <a href="/content/?907.html" target="_blank"  title="水生美人蕉"><img src="/static/picture/201602281550022246.jpg" width="147" height="92" /></a>


                                <div style="height:20px;"></div>
                                <a href="/list/?44_1.html" target="_blank"><div style="font-size:14px;color:#006cff;text-align:left;margin-left:20px;margin-bottom:5px;">景观工程</div></a>
                                <div style="float:left; width:250px;">

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?725.html" target="_blank"  title="如何在盐碱地合理绿化" style="color:#606060;">如何在盐碱地合理绿化</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?713.html" target="_blank"  title="层次造就景观美！！！" style="color:#606060;">层次造就景观美！！！</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?775.html" target="_blank"  title="国韵·马头墙" style="color:#606060;">国韵·马头墙</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?733.html" target="_blank"  title="苗木蘸泥浆移植技术" style="color:#606060;">苗木蘸泥浆移植技术</a>
                                    </div>

                                    <div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">
                                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                                        <a href="/content/?730.html" target="_blank"  title="精品苗木将成为未来苗市寻常物" style="color:#606060;">精品苗木将成为未来苗市寻常物</a>
                                    </div>

                                </div>
                                <div style="float:right;width:50px;margin-top:92px;text-align:right;font-family:'宋体';font-weight:bold;font-size:16px;cursor:pointer" onMouseOver="this.style.color='#3489fc'" onMouseOut="this.style.color='#606060'" onclick="wx1.style.display='block';wx2.style.display='none';">
                                    <<
                                </div>
                            </div>
                        </div>
                    </td>
                    <td width="140" align="left"><img src="/static/picture/ewm1.png" /></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<div style="width:1000px; height:25px;margin:auto; margin-top:25px;">
    <table width="1000" height="36" border="0" align="center" cellpadding="0" cellspacing="0" id="wchlink" style="margin:auto;display:none;font-family:'Microsoft YaHei',SimHei,sans-serif;" onmouseout="wchlink.style.display='none'">
        <tr>
            <td onMouseOver="wchlink.style.display='block'">


                <a href="http://www.baidu.com" target="_blank">百度</a>



                / <a href="http://www.it506.com" target="_blank">郑州网站建设</a>


            </td>
        </tr>
    </table>
</div>
<div style="width:100%;height:36px;background-color:#dfdfdf;">
    <table width="1000" height="36" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#DFDFDF" style="margin:auto;">
        <tr>
            <td width="80" style="color:#535353;font-size:14px;" onMouseOver="wchlink.style.display='block'">
                友情链接
            </td>
            <td width="200">技术支持：<a href="http://www.it506.com" target="_blank">和美科技</a></td>
            <td width="614">Copyright (c) 2008-2015 版权所有：河南省绿洲园林有限公司 网站备案：豫ICP备11011632号-1<br></td>
            <td width="106" align="right">
                <img src="/static/picture/foot1.png" style="float:left;margin-right:10px;" onMouseOver="this.src='/Templates/cn/images_my/foot1_ok.png'" onMouseOut="this.src='picture/foot1.png'" />
                <img src="/static/picture/foot2.png" style="float:left;margin-right:10px;" onMouseOver="this.src='/Templates/cn/images_my/foot2_ok.png'" onMouseOut="this.src='picture/foot2.png'" />
                <img src="/static/picture/foot3.png" style="float:left" onMouseOver="this.src='/Templates/cn/images_my/foot3_ok.png'" onMouseOut="this.src='picture/foot3.png'" /> </td>
        </tr>
    </table>
</div>
<script src="/static/js/piaofu.js" language="JavaScript"></script><script src="/static/js/aspcms_advjs.asp" language="JavaScript"></script>

<script src="/static/js/imagesloaded.js"></script>
<script src="/static/js/smartresize.js"></script>
<script src="/static/js/jquery.skidder.js"></script>
<script type="text/javascript">
    $('.slideshow').each( function() {
        var $slideshow = $(this);
        $slideshow.imagesLoaded( function() {
            $slideshow.skidder({
                slideClass    : '.slide',
                animationType : 'css',
                scaleSlides   : true,
                maxWidth : 1300,
                maxHeight: 500,
                paging        : true,
                autoPaging    : true,
                pagingWrapper : ".skidder-pager",
                pagingElement : ".skidder-pager-dot",
                swiping       : true,
                leftaligned   : false,
                cycle         : true,
                jumpback      : false,
                speed         : 400,
                autoplay      : false,
                autoplayResume: false,
                interval      : 4000,
                transition    : "slide",
                afterSliding  : function() {},
                afterInit     : function() {}
            });
        });
    });
    $(window).smartresize(function(){
        $('.slideshow').skidder('resize');
    });
</script>
</body>
</html>
