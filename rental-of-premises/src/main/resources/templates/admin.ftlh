<!DOCTYPE html>
<html>
<head>
    <title>APARTMENTS</title>
</head>
<body>
<h1>rental of premises </h1>
<hr>
<h4>Панель администратора</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Активность</th>
        <th>Роли</th>
        <th>Бан</th>
        <th>Редактирование</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as user>
    <tr>
        <th>${user.email}</th>
        <th>${user.phoneNumber}</th>
        <th><#if user.active>true<#else>false</#if></th>
        <th><#list user.roles as role>${role}</#list></th>
        <th>
            <form action="/admin/user/ban/${user.id}" method="post">
                <input type="submit" value="Бан">
            </form>
        </th>
        <th><a href="/admin/user/edit/${user.id}">Редактировние</a></th>
        <th><a href="/user/${user.id}">Подробная информация</a></th>
    </tr>
    <#else>
    <h3>Пользователей нет</h3>
    </#list>
</table>
<form action="/" method="get">
    <input type="submit" value="Вернуться назад"/>
</form><br>
</body>
</html>