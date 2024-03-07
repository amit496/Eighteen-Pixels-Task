@extends('layout.app')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h5 class="m-0">Products</h5>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
                            <li class="breadcrumb-item active">Edit Products</li>
                        </ol>
                    </div>
                </div>
                <div class="card" style="width: 50%; margin:auto;">
                    <div class="card-header bg-dark">
                        <div class="row mb-2">
                            <div class="col-sm-6 align-items-center">
                                <h1 class="m-0">Product Update</h1>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="{{route('product.editSubmit', ['id' => $productRecord->id])}}" method="post">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            @error('productname')
                                                    <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                            @error('customerqty')
                                                <div class="alert alert-danger">{{$message}}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    @csrf
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="text" class="form-control" name="productname" id="productname" value="{{$productRecord->product_name}}" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-lg-12">
                                            <input type="number" class="form-control" name="customerqty" id="customerqty" value="{{$productRecord->customer_qty}}" required>
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
