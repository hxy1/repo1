<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>财务管理系统</title>
    <link rel="stylesheet" type="text/css" href="./layui1/css/layui.css" media="all" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">财务管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      
    </ul>
    <ul class="layui-nav layui-layout-right">
		<li class="layui-nav-item">
			<a href="">未处理报账<span class="layui-badge">9</span></a>
		</li>
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="修改基本资料.html">修改基本资料</a></dd>
          <!--<dd><a href="">安全设置</a></dd>  -->
        </dl>
      </li>
      <li class="layui-nav-item"><a href="login.html">注销</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item"><a href="index.html">主页管理</a></li>
		
        <li class="layui-nav-item">
          <a class="layui-this" href="javascript:;">员工管理</a>

		  <dl class="layui-nav-child">
            <dd><a href="userlist.html">员工列表</a></dd>
          </dl>
        </li>
		
        <li class="layui-nav-item">
            <a href="javascript:;">报账管理</a>
            <dl class="layui-nav-child">
                <dd><a href="录凭证.html">报账</a></dd>
                <dd><a href="查凭证.html">查看报账信息</a></dd>
				<dd><a href="审核报账.html">审核报账信息</a></dd>
            </dl>
        </li>		
		
        
        <li class="layui-nav-item">
            <a href="javascript:;">报表</a>
            <dl class="layui-nav-child">
                <dd><a href="">费用明细表</a></dd>
            </dl>
        </li>
		
        <li class="layui-nav-item">
            <a href="javascript:;">资产管理</a>
            <dl class="layui-nav-child">
                <dd><a href="">日记账</a></dd>
				<dd><a href="">核对总账</a></dd>
				<dd><a href="审核报账.html">审核报账</a></dd>
            </dl>
        </li>
	
        <li class="layui-nav-item">
            <a href="javascript:;">工资管理</a>
            <dl class="layui-nav-child">
                <dd><a href="">工资表</a></dd>
            </dl>
        </li>
	
        <li class="layui-nav-item">
            <a href="javascript:;">权限管理</a>
            <dl class="layui-nav-child">
                <dd><a href="rule.html">规则列表</a></dd>
                <dd><a href="role.html">角色列表</a></dd>
                <dd><a href="adminRole.html">用户角色</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">集成Demo</a>
            <dl class="layui-nav-child">
                <dd><a href="upload.html">文件上传</a></dd>
                <dd><a href="upload.html">Execel导出</a></dd>
            </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>用户管理 - 用户列表</legend>
            <div class="layui-field-box">
              <form class="layui-form" action="">
                <div class="layui-form-item" style="text-align:center;">
                  <div class="layui-inline">
                    <div class="layui-input-inline">
                      <input autocomplete="off" class="layui-input" placeholder="请输入名称" type="text" name="name" value="">
                    </div>
                  </div>
                  <div class="layui-inline" style="text-align:left;">
                    <div class="layui-input-inline">
                      <button class="layui-btn"><i class="layui-icon">&#xe615;</i>查询</button>
                    </div>
                  </div>
                </div>
              </form>
              <hr>
              <div class="layui-btn-group">
                  <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="create.html" dw-title="新增用户" dw-width="100%" dw-height="100%">
                      <i class="layui-icon">&#xe654;</i>新增
                  </button>
                  <button class="layui-btn layui-btn-xs layui-btn-danger dw-batch-delete" dw-url="./delete.json">
                      <i class="layui-icon">&#xe640;</i>删除
                  </button>
                  <button class="layui-btn layui-btn-xs dw-refresh">
                      <i class="layui-icon">&#x1002;</i>刷新
                  </button>
              </div>
              <hr>
              <table class="layui-table">
                  <colgroup>
                      <col width="150">
                      <col width="150">
                      <col width="200">
                      <col>
                      <col>
                  </colgroup>
                  <thead>
                      <tr>
                      <th class="selectAll"><input type="checkbox"></th>
                      <th>昵称</th>
                      <th>加入时间</th>
                      <th>签名</th>
                      <th style="text-align:center;">操作</th>
                      </tr> 
                  </thead>
                  <tbody>
                      <tr>
                      <td><input type="checkbox" name="id" value="1"></td>
                      <td>贤心</td>
                      <td>2016-11-29</td>
                      <td>人生就像是一场修行</td>
                      <td class="text-center">
                        <div class="layui-btn-group">
                          <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="create.html?id=1" dw-title="编辑用户">
                            <i class="layui-icon">&#xe642;</i>编辑
                          </button>
                          <button class="layui-btn layui-btn-xs layui-btn-danger dw-delete" dw-url="delete.html?id=1" dw-title="小明">
                            <i class="layui-icon">&#xe640;</i>删除
                          </button>
                        </div>
                      </td>
                      </tr>
                      <tr>
                      <td><input type="checkbox" name="id" value="2"></td>
                      <td>许闲心</td>
                      <td>2016-11-28</td>
                      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                      <td class="text-center">
                          <div class="layui-btn-group">
                              <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="create.html?id=1" dw-title="编辑用户">
                                <i class="layui-icon">&#xe642;</i>编辑
                              </button>
                              <button class="layui-btn layui-btn-xs layui-btn-danger dw-delete" dw-url="delete.html?id=1" dw-title="小明">
                                <i class="layui-icon">&#xe640;</i>删除
                              </button>
                            </div>
                      </td>
                      </tr>
                      <tr>
                      <td><input type="checkbox" name="id" value="3 "></td>
                      <td>sentsin</td>
                      <td>2016-11-27</td>
                      <td> Life is either a daring adventure or nothing.</td>
                      <td class="text-center">
                          <div class="layui-btn-group">
                              <button class="layui-btn layui-btn-xs layui-btn-normal dw-dailog" dw-url="create.html?id=1" dw-title="编辑用户">
                                <i class="layui-icon">&#xe642;</i>编辑
                              </button>
                              <button class="layui-btn layui-btn-xs layui-btn-danger dw-delete" dw-url="delete.html?id=1" dw-title="小明">
                                <i class="layui-icon">&#xe640;</i>删除
                              </button>
                            </div>
                      </td>
                      </tr>
                  </tbody>
              </table>
            </div>
        </fieldset>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./icheck/icheck.js"></script>
<script type="text/javascript" src="./js/dw.js"></script>
</body>
</html>