{include file="view/layout/header.tpl"}
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
    <div class="slide"><img src="/static/images/img/4.png"></div>
    <div class="slide"><img src="/static/images/img/2.png"></div>
    <div class="slide"><img src="/static/images/img/3.png"></div>
    <div class="slide"><img src="/static/images/img/1.png"></div>

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

                <a href="/list/?12_1.html"><img src="/static/images/1_1.jpg" width="247" height="132"><h3 style="margin-top: 0px;">设计案例 <div><em>Design </em><span>More&gt;&gt;</span></div></h3></a>

                <a href="/list/?11_1.html"><img src="/static/images/1_2.jpg" width="247" height="132"><h3 style="margin-top: 0px;">工程案例 <div><em>Engineering </em><span>More&gt;&gt;</span></div></h3></a>

                <a href="/about/?3.html"><img src="/static/images/1_3.jpg" width="247" height="132"><h3 style="margin-top: 0px;">苗圃基地 <div><em>Nursery </em><span>More&gt;&gt;</span></div></h3></a>

                <a href="/list/?4_1.html"style="margin-right:0px;"><img src="/static/images/1_4.jpg" width="247" height="132"><h3 style="margin-top: 0px;">园林资材 <div><em>Materials </em><span>More&gt;&gt;</span></div></h3></a>

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
//                function HoverLi1(n){
//                    for(var i=1;i<=2;i++){g1('tbc_0'+i).className='undis';g1('sel'+i).className='wch2';}g1('tbc_0'+n).className='dis';g1('sel'+n).className='wch1';
//                }
                {/literal}
            </script>
            <div style="width:470px;margin:auto;margin-top:15px;color:#606060;font-size:14px;font-family:'Microsoft YaHei',SimHei,sans-serif;">
            <span style="float:left; width:130px;">
            <a href="/list/?20_1.html" target="_blank"><span id="sel2" onmouseover="HoverLi1(2);" class="wch2">行业新闻</span></a></span><span style="float:left">...............................................................................</span>
            <a href="/news/front" target="_blank" style="color:#242660; float:right" onMouseOver="this.style.color='#ff0101'" onMouseOut="this.style.color='#606060'" >More>></a>
            </div>
            <div style=" clear:both;height:15px;"></div>
            <DIV class=dis id=tbc_01>
                <div style="clear:both;height:10px;"></div>
                <div style="width:470px;margin:auto">
                    {foreach from=$news item=each}
                        <div style="width:100%;height:26px;color:#606060;font-size:14px;">
                     <span style="float:left">
                        <img src="/static/picture/arro.jpg" style="margin-right:10px;" />
                        <a href="/news/one?id={$each['id']}" target="_blank"  title="{$each['title']}" style="color:#606060;">{$each['title']}</a>
                     </span>
                            <span style="float:right">[{date('Y-m-d H:i:s',$each['time'])}]</span>
                        </div>
                    {/foreach}






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
                                <br>
                                <a href="/content/?936.html" target="_blank"  title="榆叶梅"><img src="/static/picture/201605111540387657.jpg" width="147" height="92" /></a>

                                <a href="/content/?935.html" target="_blank"  title="碧桃"><img src="/static/picture/201605111523459679.jpg" width="147" height="92" /></a>

                                <a href="/content/?936.html" target="_blank"  title="榆叶梅"><img src="/static/picture/201605111540387657.jpg" width="147" height="92" /></a>

                                <a href="/content/?935.html" target="_blank"  title="碧桃"><img src="/static/picture/201605111523459679.jpg" width="147" height="92" /></a>

                                <div style="float:right;width:50px;margin-top:62px;text-align:right;font-family:'宋体';font-weight:bold;font-size:16px;cursor:pointer" onMouseOver="this.style.color='#3489fc'" onMouseOut="this.style.color='#606060'" onclick="wx1.style.display='none';wx2.style.display='block';">
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

                                    {*<div style="width:100%;height:23px;color:#606060;font-size:14px;text-align:left">*}
                                        {*<img src="/static/picture/arro.jpg" style="margin-right:10px;" />*}
                                        {*<a href="/content/?725.html" target="_blank"  title="如何在盐碱地合理绿化" style="color:#606060;">如何在盐碱地合理绿化</a>*}
                                    {*</div>*}

                                </div>
                                <div style="float:right;width:50px;margin-top:92px;text-align:right;font-family:'宋体';font-weight:bold;font-size:16px;cursor:pointer" onMouseOver="this.style.color='#3489fc'" onMouseOut="this.style.color='#606060'" onclick="wx1.style.display='block';wx2.style.display='none';">
                                    <<
                                </div>
                            </div>
                        </div>
                    </td>
                    {*<td width="140" align="left"><img src="/static/picture/ewm1.png" /></td>*}
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

    </table>
</div>

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
