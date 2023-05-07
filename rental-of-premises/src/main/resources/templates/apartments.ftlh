<!DOCTYPE html>
<html>
<head>
    <title>guzevka</title>
</head>
<body>
<h1>rental of premises</h1><hr>
<h4>Апартаменты по всему миру</h4>
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
<hr>
<h3>Добавить новые апартаменты:</h3>
<form action="/apartment/create" method="post" enctype="multipart/form-data">
    Название апартаментов: <input type="text" name="title"/><br><br>
    Описание апартаментов: <input type="text" name="description"/><br><br>
    Страна апартаментов: <input type="text" name="country"/><br><br>
    Город апартаментов: <input type="text" name="city"/><br><br>
    Адрес апартаментов: <input type="text" name="address"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Владелец: <input type="text" name="author"/><br><br>
    <input type="submit" value="Добавить апартаменты"/>
</form>
</body>
</html>