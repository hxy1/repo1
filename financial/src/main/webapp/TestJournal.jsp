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
  <link rel="stylesheet" href="layui1/css/layui.css"  media="all">
  </head>
<body> 
 
<div class="demoTable">
  搜索ID：
  <div class="layui-inline">
    <input class="layui-input" name="keyword" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="test"></table>
               
          
<script type="text/javascript" src="layui1/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //方法级渲染
  table.render({
    elem: '#LAY_table_user'
    ,url: 'voucher.do?op=checkvoucher'
    	,cols: [[
    	         {field:'id', width:120, title: '账单编号', sort: true}
    	         ,{field:'types', width:123, title: '报账类型'}
    	         ,{field:'project', width:250, title: '报账项目'}
    	   	  ,{field:'reportime', width:150, title: '报账时间'}
    	         ,{field:'allmoney', width:150, title: '报账总金额'}
    	       ]]
    ,id: 'testReload'
    ,page: true
    ,height: 315
  });
  
  var $ = layui.$, active = {
    reload: function(){
      var demoReload = $('#demoReload');
      table.reload('testReload', {
        page: {curr: 1 }
        ,where: {
        	  keyword: demoReload.val()
        }
      });
      console.log(demoReload.val());
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});
</script>

</body>
</html>