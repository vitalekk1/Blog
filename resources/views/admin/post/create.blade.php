@extends('admin.layouts.main')

@section('content')

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Add post</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Add post</li>
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

                        <form action="{{ route('admin.post.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group w-25">
                                <input type="text" class="form-control" name="title" placeholder="Enter name post"
                                       value="{{ old('title') }}">

                                @error('title')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <textarea id="summernote" name="content">{{ old('title') }}</textarea>
                                @error('content')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group w-50">
                                <label for="exampleInputFile">Add preview</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" name="preview_image">
                                        <label class="custom-file-label">Choose file</label>
                                    </div>
                                    <div class="input-group-append">
                                        <span class="input-group-text">Upload</span>
                                    </div>
                                </div>

                                @error('preview_image')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group w-50">
                                <label for="exampleInputFile">Add main image</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" name="main_image">
                                        <label class="custom-file-label">Choose file</label>
                                    </div>
                                    <div class="input-group-append">
                                        <span class="input-group-text">Upload</span>
                                    </div>
                                </div>

                                @error('main_image')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group w-25">
                                <label>Select category</label>
                                <select class="form-control" name="category_id">
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}"
                                            {{ $category->id == old('category_id') ? 'selected' : ''}}>
                                            {{ $category->title }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Tags</label>
                                <select class="select2" name="tag_ids[]" multiple="multiple" data-placeholder="Select a Tag"
                                        style="width: 100%;">
                                    @foreach($tags as $tag)
                                        <option {{ is_array( old('tag_ids')) && in_array($tag->id, old('tag_ids')) ? 'selected' : '' }} value="{{ $tag->id }}">{{ $tag->title }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>

@endsection
