{include file="/view/layout/header.tpl"}
{literal}
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
    .menu ul li:hover dl dd {text-align:center; background:url('/static/images/news/menu1_line.png') no-repeat center bottom;width:150px;}
    .menu ul li:hover dl dd a {display:block;color:#666;height:auto; height:38px;line-height:38px;width:139px;font-size:14px;}
    .menu ul li:hover dl dd a:hover {color:#000;background:url("/static/images/news/menu1_ok.png") repeat center center;width:139px;}

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
{/literal}
<![endif]-->

<table cellspacing="0" cellpadding="0" width="1000" align="center" border="0" style="margin:auto;">
    <tr>
        <td width="202" valign="top">
            {literal}
            <style>
                .side_w{float: left;width: 222px;}
                .side{float: left;padding-bottom:39px;width: 222px;background: url(/static/images/news/left_foot.png) no-repeat center bottom;}
                .side_c{margin-top:0px;padding-left: 8px;width: 214px;overflow: hidden;background: url(/static/images/news/left_center.png) repeat-y 0 0;}

                .wch_nav{width: 200px;}
                .wch_nav li{position: relative;background: url(/static/images/news/left_line_bg.png) no-repeat center bottom;}
                .wch_nav i{padding-left: 30px;width: 140px;height: 50px;line-height: 50px;text-align: center;display: block;}
                .wch_nav i a{color: #444;}
                .wch_nav a.wch_nav_f{width: 200px;height: 50px;line-height: 50px;color: #666666;text-align: center;font-size: 16px;display: block;}
                .wch_nav a.wch_nav_dq, .wch_nav span.wch_nav_dq{background-position: center -1px;color: #E51F15;}
                .wch_nav span.wch_nav_dq a{color: #E51F15;}
                .wch_nav_sub{padding: 0 0 10px;font-size: 13px;text-align: center;}
                .wch_nav_sub a{margin-bottom: 5px;line-height: 25px;color: #666666;display: block;}
                .wch_nav_sub a:hover{color: #E51F15;}

                .subok{display:block!important;}
                .subno{display:none;}

                .wch_nav ul li .ok{color:#ff0000;}
                .wch_nav ul li .ok a{color:#ff0000;}
            </style>
            {/literal}

            <div class="side_w">
                <div class="side">
                    <div class="side_c">


                        <table width="202" border="0" cellpadding="0" cellspacing="0">

                            <tr><td width="202" height="143"><img src="/static/picture/news/left_bg2.png" width="200" /></td></tr>
                            <tr><td height="5"></td></tr>
                            <tr>
                                <td valign="top">
                                    <div class="wch_nav">
                                        <ul>


</ul>
</div>
</td>
</tr>
</table>




</div>
</div>
</div>
</td>
<td width="38"></td>
<td width="760" valign="top">
<table cellspacing="0" cellpadding="0" width="760" border="0">
<tr><td height="20"></td></tr>
<tr>
<td width="160" align="left" style="font-size:20px;font-family:'Microsoft YaHei',SimHei,sans-serif;">&nbsp;新闻资讯</td>
<td width="350" align="right">
<form action="/" method="post" style="margin-top:5px;">
<INPUT class="searchInput" value="输入关键字" name="keys" onblur="if(value=='')value='输入关键字';" onfocus="if(value == '输入关键字')value = ''">
<INPUT type="button" onclick="submit();" style="background:url(/static/images/news/find.png) no-repeat;width:30px;height:40px;border:0px;cursor:pointer;vertical-align:middle">
</form>
</td>
<td width="250" height="30" align="right" style="font-size:14px;padding-right:20px;font-family:'Microsoft YaHei',SimHei,sans-serif;">
<a href="/">首页</a> >><a href="/list/?5_1.html">新闻资讯</a>
</td>
</tr>

<tr>
<td colspan="3" valign="top" style="line-height:28px;padding:10px;font-size:14px">
<table width="98%" border="0" cellpadding="0" cellspacing="0">
{foreach from=$news item=each}
    <tr>
        <td width="85%" align="left" height="24"><img src="/static/picture/news/arro.jpg" style="margin-right:10px;" /> <a href="/news/one?id={$each['id']}" target="_blank" title="{$each['title']}">{$each['title']}</a></td>
        <td width="15%"  align="right">{date('Y-m-d', $each['time'])}</td>
    </tr>
{/foreach}
    <tr>
        <td colspan="5" style="margin-top:20px;" class="mypage" align="center">
            {$pager}
        </td>
    </tr>
</table>
    </td>
</tr>


</div>
</body>
</html>