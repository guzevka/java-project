<!DOCTYPE html>
<html>
<head>
    <title>guzevka</title>
</head>
<body>
<h1>rental of premises</h1><hr>
<h4>Подробная информация об апартаментах</h4>
<b>Название апартаментов: </b>${apartment.title}<br>
<b>Описание апартаментов: </b>${apartment.description}<br>
<b>Страна апартаментов: </b>${apartment.country}<br>
<b>Город апартаментов: </b>${apartment.city}<br>
<b>Адрес апартаментов: </b>${apartment.address}<br>
<b>Цена: </b>${apartment.price}<br>
<b>Владелец: </b>${apartment.author}<br>
<hr>
<form action="/apartment/delete/${apartment.id}" method="post">
    <input type="submit" value="Удалить апартаменты"/>
</form>
</body>
</html>