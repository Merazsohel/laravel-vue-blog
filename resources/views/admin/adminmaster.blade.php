
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Blank Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

</head>
<body class="hold-transition sidebar-mini" >

<div class="wrapper" id="app">

    <nav class="main-header navbar navbar-expand navbar-white navbar-light">



    </nav>

    <aside class="main-sidebar sidebar-dark-primary elevation-4">

        <a href="../../index3.html" class="brand-link">
            <img src="{{asset('assets/admin/default/admin.png')}}"
                 alt="AdminLTE Logo"
                 class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">{{Auth::user()->name}}</span>
        </a>


        <div class="sidebar">


            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                    <li class="nav-item has-treeview">
                        <router-link to="/home" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </router-link>

                    </li>
                    <li class="nav-item">
                        <router-link to="/category-list" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Category

                            </p>
                        </router-link>
                    </li>

                    <li class="nav-item">
                        <router-link to="/post" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Post

                            </p>
                        </router-link>
                    </li>

                </ul>
            </nav>

        </div>

    </aside>


    <div class="content-wrapper">



     <admin-main></admin-main>


    </div>



    <footer class="main-footer">

        <strong>Footer</strong>
    </footer>


    <aside class="control-sidebar control-sidebar-dark">

    </aside>

</div>

<script src="{{ asset('js/app.js') }}" defer></script>
</body>
</html>
