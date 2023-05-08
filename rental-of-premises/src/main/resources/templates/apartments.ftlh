<!DOCTYPE html>
<html>
<head>
    <title>APARTMENTS</title>
</head>
<body>
<h1>rental of premises by guzevka | <a href="/login">Войти</a></h1><hr>
<h4>Апартаменты по всей России</h4>
<form action="/apartment/create" method="get">
    <input type="submit" value="Добавить апартаменты">
</form>
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