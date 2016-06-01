<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>错误</title>
    <link rel="stylesheet" type="text/css" href="/static/mgr/main.css">
    <script type="text/javascript" src="/static/js/jquery.js"></script>
    <script>
        function changetoen(){
            document.getElementById("main").style.display='block';
            $(".zh").hide();
        }
        function changetozh(){
            $(".zh").show();
            document.getElementById("main").style.display='none';
        }
    </script>
</head>
<body>
<div id="main">
    <header id="header">
        <h1><span class="icon">!</span><span class="sub">{$msg}</span></h1>
    </header>
    <div id="content">
        <h2>{$msg}</h2>
        <div class="utilities">
            <a class="button right" href="{if $url}{$url}{else}{'history.go(-1);return true;'}{/if}">Go Back...</a>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- zh -->
<div id="main" class="zh" style="display:none">
    <header id="header">
        <h1><span class="icon">!</span><span class="sub">页面未找到</span></h1>
    </header>
    <div id="content">
        <h2><br>您所请求的页面无法找到</h2>
        <p>服务器无法正常提供信息。<br>
            目标页面可能已经被更改、删除或移到其他位置，或您所输入页面地址错误。</p>
        <div class="utilities">
            <form>
                <div class="input-container">
                    <input type="text" class="left" id="search" placeholder="搜索..." />
                    <button id="search"></button>
                </div>
            </form>
            <a class="button right" href="#" onClick="history.go(-1);return true;">返回...</a><a class="button right" href="#">联系我们</a>
            <div class="clear"></div>
        </div>
    </div>
    <div id="footer">
        <ul>
            <li><a href="#">主页</a></li>
            <li><a href="#">关于</a></li>
            <li><a href="#">项目</a></li>
            <li><a href="#" onclick="changetoen()">english</a></li>
            <li><a href="#" onclick="changetozh()">中文</a></li>
        </ul>
    </div>
</div>
</div>
</body>
</html>