<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>财务管理系统</title>
<style>
#test1 {
	margin: 0 auto;
	width: 320px;
	height: 100px;
}
</style>
<%@ include file="demo.jsp"%>

<link rel="stylesheet" href="./layui1/css/layui.css" media="all">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<fieldset class="layui-elem-field">
					<legend>员工管理 - 员工列表</legend>
					<div class="layui-field-box">
						<form class="layui-form" action="userlist.do">
							<div class="layui-form-item" style="text-align: center;">
								<div class="layui-inline">
									<div class="layui-input-inline">
										<input autocomplete="off" class="layui-input"
											placeholder="请输入名称" type="text" name="uname">
									</div>
								</div>
								<div class="layui-inline" style="text-align: left;">
									<div class="layui-input-inline">
										<button class="layui-btn">
											<i class="layui-icon">&#xe615;</i>查询
										</button>
									</div>
								</div>
							</div>

							<hr>
							<div class="layui-btn-group">

								<button class="layui-btn layui-btn-xs dw-refresh">
									<i class="layui-icon">&#x1002;</i>刷新
								</button>
							</div>
							<hr>
							<table class="layui-table">

								<colgroup>
									<col width="80">
									<col width="120">
									<col width="120">
									<col width="120">
									<col width="120">
								</colgroup>
								<thead>
									<tr>
										<th>员工编号</th>
										<th>员工姓名</th>
										<th>性别</th>
										<th>联系方式</th>
										<th>邮箱</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="users">
										<tr>
											<td>${users.uid}</td>
											<td>${users.uname}</td>
											<td>${users.sex == 1 ? '男' : '女'}</td>
											<td>${users.phone}</td>
											<td>${users.email}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
					</div>
				</fieldset>
			</div>
			<!-- 分页标签 -->
			<div id="test1"></div>
		</div>

	</div>
	<script type="text/javascript" src="./js/jquery.min.js"></script>
	<script type="text/javascript" src="./layui/layui.js"></script>
	<script type="text/javascript" src="./js/index.js"></script>
	<script type="text/javascript" src="./icheck/icheck.js"></script>
	<script type="text/javascript" src="./js/dw.js"></script>
	<script type="text/javascript" src="./layui1/layui.js"></script>

	<script>
		layui.use('laypage', function() {
			var laypage = layui.laypage;

			//执行一个laypage实例
			laypage.render({
				elem : 'test1',
				count : ${ret}, //数据总数，从服务端得到
				limit : 5,
				jump: function(obj){
				    //obj包含了当前分页的所有参数，比如：
				    console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
				    console.log(obj.limit); //得到每页显示的条数
				    
				    /* obj.curr = ${count.offset};
				    obj.limit = ${count.rows}; */
				   
				 }
			});
		});
	</script>

</body>
</html>