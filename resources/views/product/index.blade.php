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
                            <li class="breadcrumb-item active">Products</li>
                        </ol>
                    </div>
                </div>
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
                <div class="card">
                    <div class="card-header bg-dark">
                        <div class="row mb-2">
                            <div class="col-sm-6 align-items-center">
                                <h1 class="m-0">Product</h1>
                            </div>
                            <div class="col-sm-6 align-items-center">
                                <a href="{{route('product.add')}}" class="float-right bg-success ms-2" style="padding: 10px 25px; border-radius:5px">ADD Product</a>
                                <a href="{{route('product.export')}}" class="float-right bg-success" style="padding: 10px 25px; border-radius:5px">Export</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Main content -->
                        @if ($productRecord->count() > 0)
                            <table class="table" id="customerTable">
                                <thead>
                                    <tr>
                                        <th>S no</th>
                                        <th>Name</th>
                                        <th>Customer Qty</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $counter = 1;
                                    @endphp
                                    @foreach ($productRecord as  $key => $value)
                                        <tr>
                                            <td>{{$counter++}}</td>
                                            <td>{{$value->product_name}}</td>
                                            <td>{{$value->customer_qty}}</td>
                                            <td>
                                                <a href="{{ route('product.edit', ['id' => $value->id]) }}" class="btn btn-success">
                                                    <i class="fas fa-pencil-alt"></i>
                                                </a>
                                                <a href="{{ route('product.delete', ['id' => $value->id]) }}" class="btn btn-danger">
                                                    <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            {{$productRecord->links()}}
                        @else
                            {!!"<p class='text-danger'>Record not foud</p>"!!}
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
