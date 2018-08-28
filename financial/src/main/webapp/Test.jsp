<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="layui1/css/layui.css">

</head>
<body>
<div style="margin-bottom: 5px;">
</div>
<div class="demoTable">
    搜索类型：
    <div class="layui-inline">
        <input class="layui-input" name="keyword" id="demoReload" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
</div>

<table class="layui-hide" id="LAY_table_user" style="width: 1300px; " lay-filter="useruv"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-mini" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除</a>
</script>

<script src="layui1/layui.js"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //方法级渲染
        table.render({
            elem: '#LAY_table_user'
            ,url: 'voucher.do?op=checkvoucher' //数据接口
            ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'types', width:120, title: '报账类型'}
                ,{field:'project', width:131, title: '报账项目'}
                ,{field:'uname', width:100, title: '报账人'}
                ,{field:'reportime', width:120, title: '报账时间'}
          	    ,{field:'money', width:100, title: '报账金额'}
                ,{field:'number', width:100, title: '账单数量'}
                ,{field:'allmoney', width:120, title: '报账总金额'}
                ,{field:'right', title: '操作', width:270,toolbar:"#barDemo"}
                ,{field:'note', title: '备注', edit:'text',width:120}
            ]]
            ,id: 'testReload'
            ,page: true
            ,height: 600
        });

        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');
                table.reload('testReload', {
                    where: {
                        keyword: demoReload.val()
                    }
                });
            }
        };
        
		//	绑定click点击事件
        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        //监听工具条
        table.on('tool(useruv)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    console.log(data);
                    $.ajax({
                        url: "UVServlet",
                        type: "POST",
                        data:{"uvid":data.id,"memthodname":"deleteuv","aid":data.aid},
                        dataType: "json",
                        success: function(data){
                            if(data.state==1){
                                obj.del();
                                layer.close(index);
                                layer.msg("删除成功", {icon: 6});
                            }else{
                                layer.msg("删除失败", {icon: 5});
                            }
                        }
                    });
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,title: '修改 ID 为 ['+ data.id +'] 的访问量'
                    ,value: data.uv
                }, function(value, index){
                    EidtUv(data,value,index,obj);
                });
            }
        });

        function  EidtUv(data,value,index,obj) {
            $.ajax({
                url: "UVServlet",
                type: "POST",
                data:{"uvid":data.id,"memthodname":"edituv","aid":data.aid,"uv":value},
                dataType: "json",
                success: function(data){
                    if(data.state==1){
                        layer.close(index);
                        //同步更新表格和缓存对应的值
                        obj.update({
                            uv: value
                        });
                        layer.msg("修改成功", {icon: 6});
                    }else{
                        layer.msg("修改失败", {icon: 5});
                    }
                }
            });
        }
    });
</script>
</body>
</html>