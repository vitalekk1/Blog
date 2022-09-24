@extends('admin.layouts.main')

@section('content')

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Add user</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Add user</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-12">

                        <form action="{{ route('admin.user.store') }}" method="post" class="w-25">
                            @csrf
                            <div class="form-group">
                                <input type="text" class="form-control" name="name" placeholder="Enter name user">

                                @error('name')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>

                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" placeholder="Enter email user">

                                @error('email')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>

                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="password" placeholder="Enter password user">

                                @error('password')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>

                                @enderror
                            </div>
                            <div class="form-group w-25">
                                <label>Select Role</label>
                                <select class="form-control" name="role">
                                    @foreach($roles as $id => $role)
                                        <option value="{{ $id }}"
                                            {{ $id == old('role') ? 'selected' : ''}}>
                                            {{ $role }}</option>
                                    @endforeach
                                </select>
                                @error('role')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <input type="submit" class="btn btn-primary" value="Add">
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>

@endsection
