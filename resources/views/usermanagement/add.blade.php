@extends('layout.app')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h5 class="m-0">Users</h5>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
                            <li class="breadcrumb-item active">Add User</li>
                        </ol>
                    </div>
                </div>
                <div class="card" style="width: 50%; margin:auto;">
                    <div class="card-header bg-dark">
                        <div class="row mb-2">
                            <div class="col-sm-12">
                                <h1 style="text-align: center">Add User</h1>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="{{route('user.addSubmit')}}" method="post">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            @error('name')
                                                    <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                            @error('userid')
                                                <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                            @error('password')
                                                <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                            @error('confirmpassword')
                                                <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    @csrf
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="text" class="form-control" name="name" id="username" value="{{ old('name') }}"  placeholder="Enter Name" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="text" class="form-control" name="userid" id="userid" value="{{ old('userid') }}" placeholder="Create User Id" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="password" class="form-control" name="password" id="userpassword"  placeholder="Create Password" autocomplete="off" required>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="password" class="form-control" name="confirmpassword" id="confirmpassword"  placeholder="Confirm Password" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="row mb-2">
                                        <div class="col-lg-12">
                                            <button type="submit" class="btn btn-dark w-100" name="add">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
