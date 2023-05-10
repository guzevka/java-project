<!DOCTYPE html>
<html>
<head>
    <title>APARTMENTS</title>
</head>
<body>
<h1>rental of premises by guzevka ♥</h1><hr>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Почта пользователя: </b> ${user.email} <br>
<b>Номер телефона пользователя: </b> ${user.phoneNumber} <br>
<h4>Апартаменты пользователя ${user.name}</h4>
<#list apartments as apartment>
    <div>
        <p><b>${apartment.title}</b> ${apartment.price} руб. | <a href="/apartment/${apartment.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Апартаментов не имеется</h3>
</#list>
<hr>
<form action="/" method="get">
    <input type="submit" value="Вернуться назад"/>
</form><br>
</body>
</html>