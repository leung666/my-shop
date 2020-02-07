<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的商城 | 用户管理</title>
    <jsp:include page="../includes/header.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="../includes/nav.jsp"/>
    <jsp:include page="../includes/menu.jsp"/>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                用户管理
                <small></small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">控制面板</li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${baseResult !=null}">
                        <div class="alert alert-${baseResult.status==200?"success":"danger"} alert-dismissible" }>
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;
                            </button>
                                ${baseResult.message}
                        </div>
                    </c:if>
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">用户列表</h3>
                            <div class="row" style="padding-top: 20px">
                                <div class="col-xs-12">
                                    <a href="/user/form" type="button" class="btn btn-sm btn-default"><i
                                            class="fa fa-plus">新增</i></a>&nbsp;
                                    <a href="" type="button" class="btn btn-sm btn-default"><i
                                            class="fa fa-trash-o">删除</i></a>&nbsp;
                                    <a href="" type="button" class="btn btn-sm btn-default"><i
                                            class="fa fa-download">导入</i></a>&nbsp;
                                    <a href="" type="button" class="btn btn-sm btn-default"><i
                                            class="fa fa-upload">导出</i></a>
                                </div>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <form:form cssClass="form-horizontal" action="/user/search" method="post"
                                           modelAttribute="tbUser">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="form-group">
                                                <label for="username" class="col-sm-2 control-label">姓名</label>
                                                <div class="col-sm-8">
                                                    <form:input path="username" cssClass="form-control"
                                                                placeholder="姓名"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3">
                                            <div class="form-group">
                                                <label for="email" class="col-sm-2 control-label">邮箱</label>
                                                <div class="col-sm-8">
                                                    <form:input path="email" cssClass="form-control" placeholder="邮箱"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3">
                                            <div class="form-group">
                                                <label for="phone" class="col-sm-2 control-label">手机</label>
                                                <div class="col-sm-8">
                                                    <form:input path="phone" cssClass="form-control" placeholder="手机"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="padding-right: 70px">
                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-info pull-right">搜索</button>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="minimal icheck_master"/></th>
                                    <th>ID</th>
                                    <th>用户名</th>
                                    <th>手机号</th>
                                    <th>邮箱</th>
                                    <th>更新时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${tbUsers}" var="tbUsers">
                                    <tr>
                                        <td><input id="${tbUsers.id}" type="checkbox" class="minimal"/></td>
                                        <td>${tbUsers.id}</td>
                                        <td>${tbUsers.username}</td>
                                        <td>${tbUsers.phone}</td>
                                        <td>${tbUsers.email}</td>
                                        <td><fmt:formatDate value="${tbUsers.updated}"
                                                            pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        <td>
                                            <a href="" type="button" class="btn btn-sm btn-default"><i
                                                    class="fa fa-search">查看</i></a>&nbsp;
                                            <a href="" type="button" class="btn btn-sm btn-primary"><i
                                                    class="fa fa-edit">编辑</i></a>&nbsp;
                                            <a href="" type="button" class="btn btn-sm btn-danger"><i
                                                    class="fa fa-trash-o">删除</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="../includes/copyright.jsp"/>
</div>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
