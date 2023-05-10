<!DOCTYPE html>
<html>
<head>
    <title>APARTMENTS</title>
</head>
<body>
<h1>rental of premises by guzevka ♥</h1><hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <a href="/login">Войти</a></h1>
</#if>
<hr>
<h4>Апартаменты по всей России</h4>
<#if user.email??>
<form action="/apartment/create" method="get">
    <input type="submit" value="Добавить апартаменты">
</form>
</#if>
<form action="/" method="get">
    Поиск по названию апартаментов: <input type="text" name="title"><br>
    <input type="submit" value="Поиск">
</form>
<#list apartments as apartment>
    <div>
        <p><b>${apartment.title}</b> ${apartment.price} руб. | <a href="/apartment/${apartment.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Апартаментов не имеется</h3>
</#list>

</body>
</html>