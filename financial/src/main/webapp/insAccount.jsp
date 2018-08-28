<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>财务管理系统</title>
  <%@ include file="demo.jsp"%>
  <link rel="stylesheet" href="./layui1/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>报账管理 - 录凭证</legend>
            <div class="layui-field-box">
                <div class="layui-btn-group">
				<!--
                    <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="create.html" dw-title="新增系统变量">
                        <i class="layui-icon">&#xe654;</i>新增
                    </button>
				-->
                    <button class="layui-btn layui-btn-xs dw-refresh">
                        <i class="layui-icon">&#x1002;</i>刷新
                    </button>
                </div>	
                <hr>
                <form class="layui-form" action="insertaccount" method="post">
                    <div class="layui-form-item">
                        <label class="layui-form-label">报账类型</label>
                        <div class="layui-input-block" style="width:190px;">                        
						<select name="types" lay-verify="required">
							  <option value="">请选择报账类型</option>
							  <c:forEach items="${list}" var="lo"> 
							  <option value="${lo.types}">${lo.types}</option>
							  </c:forEach>
						</select> 
						</div>		
                    </div>
					
                    <div class="layui-form-item">
                        <label class="layui-form-label">报账项目</label>
                        <div class="layui-input-block" style="width:190px;">
                        <input type="text" name="project" required lay-verify="required" placeholder="请输入报账项目" autocomplete="off" class="layui-input">
                        </div>
						
                    </div>
					
					<div class="layui-form-item">
                        <label class="layui-form-label">报账人</label>
						<div class="layui-input-block" style="width:190px;">
						<input type="text" name="uname" required lay-verify="required" placeholder="请输入报账人" autocomplete="off" class="layui-input">
						</div>
                    </div>
					
                    <div class="layui-form-item">
                        <label class="layui-form-label">报账金额</label>
						<div class="layui-input-block" style="width:190px;">
						<input type="text" name="money" required lay-verify="required" placeholder="请输入报账金额" autocomplete="off" class="layui-input">
						</div>
                    </div>
					
					<div class="layui-form-item">
                        <label class="layui-form-label">账单数量</label>
						<div class="layui-input-block" style="width:190px;">
						<input type="text" lay-verify="number" name="number" required lay-verify="required" placeholder="请输入账单数量" autocomplete="off" class="layui-input">
						</div>
                    </div>
					
					<div class="layui-form-item">
                    <label class="layui-form-label">报账总金额</label>
						<div class="layui-input-block" style="width:190px;">
						<input type="text" name="allmoney" required lay-verify="required" placeholder="请输入报账总金额" autocomplete="off" class="layui-input">
						</div>
                    </div>
					
                    <div class="layui-form-item">
                        <label class="layui-form-label">审核状态</label>
                        <div class="layui-input-block">
							<input type="checkbox" name="state" value="1" title="未审核" disabled> 
                        </div>
                    </div>
                    
                    
                    <hr class="layui-bg-blue">
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                        <button class="layui-btn" lay-submit>立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                        
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
  </div>
</div>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./js/sys_config.js"></script>
<script type="text/javascript">
	var sign = "${sign}";
	console.log(sign);
		if( sign == "ok"){
			layui.use('layer', function(){
				  var layer = layui.layer;
				  layer.msg('提交成功');
				}); 
		}
		if( sign == "no"){
			layui.use('layer', function(){
				  var layer = layui.layer;
				  layer.msg('提交失败');
				}); 
		}
</script>
</body>
</html>