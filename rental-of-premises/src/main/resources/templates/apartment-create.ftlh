<!DOCTYPE html>
<html>
<head>
    <title>APARTMENTS</title>
</head>
<body>
<h1>rental of premises by guzevka ♥</h1><hr>
<h4>Апартаменты по всей России</h4>
<hr>
    <h3>Добавить новые апартаменты:</h3>
    <form action="/apartment/create" method="post" enctype="multipart/form-data">
        Название апартаментов: <input type="text" name="title"/><br><br>
        Описание апартаментов: <input type="text" name="description"/><br><br>
        Страна апартаментов: <input type="text" name="country"/><br><br>
        Город апартаментов: <input type="text" name="city"/><br><br>
        Адрес апартаментов: <input type="text" name="address"/><br><br>
        Цена: <input type="number" name="price"/><br><br>
        <input type="submit" value="Добавить апартаменты"/>
    </form>
    <form action="/" method="get">
        <input type="submit" value="Вернуться назад"/>
    </form>
</body>
</html>