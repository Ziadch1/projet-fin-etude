<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route('admin.update',$product->id)}}" method="post">
        @method('put')
        @csrf
        <input type="text" name="prix" placeholder="entre prix">
        <button>Update</button>
    </form>
</body>
</html>