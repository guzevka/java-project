<!DOCTYPE html>
<html>
<head>
    <title>APARTMENTS</title>
</head>
<body>
<h1>rental of premises by guzevka ♥</h1><hr>
<h4>Подробная информация об апартаментах</h4>
<b>Название апартаментов: </b>${apartment.title}<br>
<b>Описание апартаментов: </b>${apartment.description}<br>
<b>Страна апартаментов: </b>${apartment.country}<br>
<b>Город апартаментов: </b>${apartment.city}<br>
<b>Адрес апартаментов: </b>${apartment.address}<br>
<b>Цена: </b>${apartment.price}<br>
<b>Владелец: </b> <a href="/user/${apartment.user.id}"> ${apartment.user.name}</a><br>
<hr>
<form action="/" method="get">
    <input type="submit" value="Вернуться назад"/>
</form><br>
<form action="/apartment/rent/${apartment.id}" method="post">
    <input type="submit" value="Арендовать апартаменты"/>
</form><br>
<form action="/apartment/delete/${apartment.id}" method="post">
    <input type="submit" value="Удалить апартаменты"/>
</form>
</body>
</html>