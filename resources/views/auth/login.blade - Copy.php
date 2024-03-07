@extends('layouts.app')
@section('content')
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
                            <div class="row mb-4">
                                <div class="col-lg-12">
                                    <input type="text" class="form-control" name="userid" id="userid" placeholder="User-ID">
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-lg-12">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-lg-12">
                                    <a href="#">Forget Password</a>
                                </div>
                            </div>
                            <div class="row mb-4">
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
@endsection
