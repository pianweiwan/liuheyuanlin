{include file="view/mgr/layout/header.tpl"}
<div class="m-right">
    <div class="right-nav">
    </div>
    <div class="main" style="height:90%;margin-left:5px;">
        {$data['content']}
    </div>

</div>
</div>
<script src="/static/js/jquery.js"></script>
<script src="/static/js/bootstrap/bootstrap.js"></script>
<script type="text/javascript">
    {literal}
    function deleteMenu(obj) {
        if(confirm('确认删除吗？')) {
            var menu_id = $(obj).parent().parent().attr('menu_id');
            $.post('/menu/deleteMenu', {menu_id:menu_id}, function(jdata) {
                if(jdata['code'] != 200) {
                    alert('删除失败，'+jdata['msg']);
                }else {
                    alert('删除成功');
                    location.reload();
                }
            }, 'json');
        }
    }

    $(document).ready(function() {
        $('#add_menu').click(function() {
            var html = '<tr class="menu_new">' +
                    '<td class="menu_id">x</td>'+
                    '<td class="menu_name"><input type="text"></td>'+
                    '<td class="menu_url"><input type="text"></td>'+
                    '<td class="menu_father"><input type="text"></td>'+
                    '<td><a onclick="confirm_menu(this)">确认添加</a></td></tr>';
            $('tbody').append(html);
        });
    });

    function confirm_menu(obj) {
        if(confirm('确认添加吗')) {
            var menu_name = $(obj).parent().parent().find('.menu_name').find('input').val();
            var menu_url = $(obj).parent().parent().find('.menu_url').find('input').val();
            var menu_father = $(obj).parent().parent().find('.menu_father').find('input').val();
            $.get('/menu/addMenu',{name:menu_name,url:menu_url,father:menu_father},function(jdata) {
                if(jdata['code'] != 200) {
                    alert('添加失败，'+jdata['msg']);
                }else {
                    var menu_id = jdata['data'];
                    var html =
                            '<td class="menu_id">'+menu_id+'</td>'+
                            '<td class="menu_name">'+menu_name+'</td>'+
                            '<td class="menu_url">'+menu_url+'</td>'+
                            '<td class="menu_father">'+menu_father+'</td>'+
                            '<td><a onclick="deleteMenu(this)">删除</a>||<a onclick="update(this)">修改</a></td>';
                    $(obj).parent().parent().html(html).attr('class', 'menu_detail');
                    alert('添加成功');
                }
            },'json');
        }
    }


    function update(obj) {
        var old_id = $(obj).parent().parent().find('.menu_id').html();
        var old_name = $(obj).parent().parent().find('.menu_name').html();
        var old_url = $(obj).parent().parent().find('.menu_url').html();
        var old_father = $(obj).parent().parent().find('.menu_father').html();
        var html = '<td class="menu_id">'+old_id+'</td>'+
                '<td class="menu_name"><input type="text" value="'+old_name+'"></td>'+
                '<td class="menu_url"><input type="text" value="'+old_url+'"></td>'+
                '<td class="menu_father"><input type="text" value="'+old_father+'"></td>'+
                '<td><a onclick="confirm_update(this)">确认修改</a></td>';
        $(obj).parent().parent().html(html);
    }

    function confirm_update(obj) {
        if(confirm('确认修改吗?')) {
            var new_name = $(obj).parent().parent().find('.menu_name').find('input').val();
            var new_url = $(obj).parent().parent().find('.menu_url').find('input').val();
            var new_father = $(obj).parent().parent().find('.menu_father').find('input').val();
            var menu_id = $(obj).parent().parent().find('.menu_id').html();
            $.post('/menu/updateMenu', {menu_id:menu_id,name:new_name,url:new_url,father:new_father}, function(jdata) {
                if(jdata['code'] != 200) {
                    alert('修改失败'+jdata['msg']);
                }else {
                    var html = '<td class="menu_id">'+jdata['data'][0]['menu_id']+'</td>'+
                            '<td class="menu_name">'+jdata['data'][0]['name']+'</td>' +
                            '<td class="menu_url">'+jdata['data'][0]['url']+'</td>' +
                            '<td class="menu_father">'+jdata['data'][0]['father']+'</td>' +
                            '<td><a onclick="deleteMenu(this)">删除</a> || <a onclick="update(this)">修改</a></td>';
                    $(obj).parent().parent().html(html);
                    alert('修改成功');
                }
            },'json');
        }
    }
    {/literal}
</script>

