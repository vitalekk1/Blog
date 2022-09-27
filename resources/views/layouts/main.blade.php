<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog</title>
    <link rel="stylesheet" href="{{ asset('assets/vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{asset('assets/vendors/font-awesome/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/vendors/aos/aos.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <script src="{{asset('assets/vendors/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('assets/js/loader.js')}}"></script>
</head>
<body>
<div class="edica-loader"></div>
<header class="edica-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="edicaMainNav">
                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="{{ route('main.index') }}">Blog <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        @auth()
                            <a class="nav-link" href="{{ route('personal.main.index') }}">Account</a>
                        @endauth

                        @guest()
                                <a class="nav-link" href="{{ route('personal.main.index') }}">Login</a>
                        @endguest
                    </li>

                </ul>
            </div>
        </nav>
    </div>
</header>

@yield('main_content')

<footer class="mt-5 edica-footer" data-aos="fade-up">
    <div class="container">

        <div class="footer-bottom-content">
            <p class="mb-0">© <a href="https://orenburg.hh.ru/resume/6e698184ff0953ddce0039ed1f6c30374f7461" target="_blank"
                                 rel="noopener noreferrer" class="text-reset">Vitalik Kakanov</a>. 2022  . All rights
                reserved.</p>
        </div>
    </div>
</footer>
<script src="{{ asset('assets/vendors/popper.js/popper.min.js') }}"></script>
<script src="{{ asset('assets/vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/vendors/aos/aos.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>
<script>
    AOS.init({
        duration: 1000
    });
</script>
</body>

</html>
