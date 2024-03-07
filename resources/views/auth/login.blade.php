

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="{{asset('asset/css/style.css')}}">
</head>
<body>
    <div class="container mt-5" style="width: 40%">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header bg-dark">
                        <h3 class="text-center text-light">Login</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                @error('userid')
                                        <div class="alert alert-danger">{{$message}}</div>
                                @enderror
                                @error('password')
                                    <div class="alert alert-danger">{{$message}}</div>
                                @enderror
                            </div>
                        </div>
                        <form action="{{route('login.submit')}}" method="post">
                            @csrf
                            <div class="row mb-3">
                                <div class="col-lg-12">
                                    <input type="text" class="form-control" name="userid" id="userid" placeholder="User-ID">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-lg-12">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-lg-12">
                                    <a href="#">Forget Password</a>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-lg-12">
                                    <button type="submit" class="btn btn-dark w-100" name="loginBtn">Login</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="{{asset('asset/js/index.js')}}"></script>
</body>
</html>
