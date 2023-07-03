<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route('admin.store')}}" method="post">
        @csrf
        <input type="text" placeholder="title" name="title"><br><br>
        <input type="text" placeholder="prix" name="prix"><br><br>
        <input type="text" placeholder="description" name="description"><br><br>
        <input type="text" placeholder="quantité" name="quantity"><br><br>
        <input type="text" placeholder="img url" name="img"><br><br>
        <select name="type" id="">
            <option value="pcgamer">pcgamer</option>
            <option value="pcportable">pcportable</option>
            <option value="monitors">monitors</option>
            <option value="accessoires">accesoire</option>
        </select>
        <button>submit</button>
    </form>
</body>
</html>