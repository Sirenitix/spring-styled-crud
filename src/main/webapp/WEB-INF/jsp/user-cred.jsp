<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<style>
    table {
        /*background-color: white;*/
        border-radius: 4px;
    }


</style>

<div class="container">



    <table class="table table-striped">
        <thead>
        <tr>
            <th>Логин</th>
            <th>Пароль</th>
            <th>Роль</th>
            <th>Статус аккаунта</th>
        </tr>
        </thead>
        <tbody class="radius" >
        <c:forEach items="${user}" var="user_info">
            <tr>
                <td>${user_info.login}</td>
                <td>${fn:substring(user_info.password, 6, -1)}</td>
                <td>${user_info.role == "ROLE_ADMIN" ? "Админ" : "Пользователь"}</td>
                <td>${user_info.enabled == "true" ? "Активен" : "Отключен"}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</div>
<%@ include file="common/footer.jspf" %>