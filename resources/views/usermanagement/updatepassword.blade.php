@extends('layout.app')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h5 class="m-0">User</h5>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
                            <li class="breadcrumb-item active">Update Password</li>
                        </ol>
                    </div>
                </div>
                <div class="card" style="width: 50%; margin:auto;">
                    <div class="card-header bg-dark">
                        <div class="row mb-2">
                            <div class="col-sm-12 align-items-center">
                                <h1 class="m-0 text-center">Update Password</h1>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="{{route('user.password.updateSubmit', ['id' => $UserRecord->id])}}" method="post">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            @if (session('success'))
                                            <div class="alert alert-success">
                                                {{ session('success') }}
                                            </div>
                                            @endif
                                            @if (session('error'))
                                                <div class="alert alert-danger">
                                                    {{ session('error') }}
                                                </div>
                                            @endif
                                            @error('oldpassword')
                                                    <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                            @error('newpassword')
                                                <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                            @error('confirmpassowrd')
                                                <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    @csrf
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="password" class="form-control" name="oldpassword" id="oldpassword"  placeholder="Enter Old Password" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="password" class="form-control" name="newpassword" id="newpassword"  placeholder="Create New Password" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="password" class="form-control" name="confirmpassowrd" id="confirmpassowrd"  placeholder="Confirm Password" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="row mb-2">
                                        <div class="col-lg-12">
                                            <button type="submit" class="btn btn-dark w-100" name="update">Update</button>
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
