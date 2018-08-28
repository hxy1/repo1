<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>财务管理系统</title>
  <%@ include file="demo.jsp"%>
  <link rel="stylesheet" href="layui1/css/layui.css">

</head>    
<body class="layui-layout-body" >    
<div class="layui-layout layui-layout-admin">
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>报账管理 - 报账信息列表</legend>
            <div class="layui-field-box">
              <hr>
              <div>
                  <button class="layui-btn layui-btn-xs dw-refresh">
                      <i class="layui-icon">&#x1002;</i>刷新
                  </button>
				  <button id="btn" class="layui-btn layui-btn-xs btn btn-primary">
					  <i class="layui-icon">&#x1002;</i>导出
					  </button> 
              </div> 
              <hr>
                    <div class="table-responsive table2excel" style="width: 1160px; "
					data-tableName="Test Table 1">    
						<table id="demo" lay-filter="test"></table>
             		</div>   
				</div>
			</fieldset>
		</div>
	</div>
</div>

<script src="js/jquery-1.11.0.min.js" charset="utf-8"></script>    
<script src="js/jquery.table2excel.js" charset="utf-8"></script>    
<script type="text/javascript" src="layui1/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="icheck/icheck.js" charset="utf-8"></script>
<script type="text/javascript" src="js/dw.js"></script>
<script src="userlogin/javascript/jquery-3.2.1.js" type="text/javascript"></script>
	<script> 
layui.use('table', function(){
  var table = layui.table;
  
  //第一个实例
  table.render({
    elem: '#demo'
    ,height: 315
    ,url: 'voucher.do?op=checkvoucher' //数据接口
    ,page: true //开启分页
    ,method:'post'
	,cols: [[
      {field:'id', width:80, title: 'ID', sort: true}
      ,{field:'types', width:100, title: '报账类型'}
      ,{field:'project', width:100, title: '报账项目'}
      ,{field:'uname', width:80, title: '报账人'}
	  ,{field:'reportime', width:120, title: '报账时间'}
      ,{field:'auditime', width:120, title: '审核时间'}
      ,{field:'money', width:100, title: '报账金额'}
      ,{field:'number', width:100, title: '账单数量'}
      ,{field:'allmoney', width:120, title: '报账总金额'}
      ,{field:'state', width:120, title: '报账状态'}
      ,{field:'note' , title: '备注', edit:'text',width:120}
    ]]
  });
  
  //监听单元格编辑
  table.on('edit(demo)', function(obj){
    var value = obj.value //得到修改后的值
    ,data = obj.data //得到所在行所有键值
    ,field = obj.field; //得到字段
  });
  
});

$(function() {    
            $("#btn").click(function(){  
                $(".table2excel").table2excel({  			
                    exclude: ".noExl",    
                    name: "Excel Document Name",    
                    filename: "凭证表",    
                    exclude_img: true,    
                    exclude_links: true,    
                    exclude_inputs: true    
                });  
            });    
        }); 
        
    </script> 
    <script type="text/javascript">
    $(document).ready(function () {
    	$("#demo").blur(function(){
    		  console.log('失焦');
    	  });
    });
    </script>
</body>    
</html>