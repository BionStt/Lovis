﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="lovis.Views.Account.User" %>

<!DOCTYPE html>

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Material Dashboard by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="../Shared/Assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="../Shared/Assets/css/material-dashboard.css" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../Shared/Assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="formUser" runat="server">
        <div>
            <div class="wrapper">
                <div class="sidebar" data-color="purple" data-image="../assets/img/sidebar-1.jpg">
                    <div class="logo">
                        <a href="http://www.creative-tim.com" class="simple-text">Creative Tim
                        </a>
                    </div>
                    <div class="sidebar-wrapper">
                        <ul class="nav">
                            <li>
                                <a href="dashboard.html">
                                    <i class="material-icons">dashboard</i>
                                    <p>Dashboard</p>
                                </a>
                            </li>
                            <li class="active">
                                <a href="user.html">
                                    <i class="material-icons">person</i>
                                    <p>User Profile</p>
                                </a>
                            </li>
                            <li>
                                <a href="table.html">
                                    <i class="material-icons">content_paste</i>
                                    <p>Table List</p>
                                </a>
                            </li>
                            <li>
                                <a href="typography.html">
                                    <i class="material-icons">library_books</i>
                                    <p>Typography</p>
                                </a>
                            </li>
                            <li>
                                <a href="icons.html">
                                    <i class="material-icons">bubble_chart</i>
                                    <p>Icons</p>
                                </a>
                            </li>
                            <li>
                                <a href="maps.html">
                                    <i class="material-icons">location_on</i>
                                    <p>Maps</p>
                                </a>
                            </li>
                            <li>
                                <a href="notifications.html">
                                    <i class="material-icons text-gray">notifications</i>
                                    <p>Notifications</p>
                                </a>
                            </li>
                            <li class="active-pro">
                                <a href="upgrade.html">
                                    <i class="material-icons">unarchive</i>
                                    <p>Upgrade to PRO</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="main-panel">
                    <nav class="navbar navbar-transparent navbar-absolute">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">Profile</a>
                            </div>
                            <div class="collapse navbar-collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li>
                                        <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="material-icons">dashboard</i>
                                            <p class="hidden-lg hidden-md">Dashboard</p>
                                        </a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="material-icons">notifications</i>
                                            <span class="notification">5</span>
                                            <p class="hidden-lg hidden-md">Notifications</p>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Mike John responded to your email</a></li>
                                            <li><a href="#">You have 5 new tasks</a></li>
                                            <li><a href="#">You're now friend with Andrew</a></li>
                                            <li><a href="#">Another Notification</a></li>
                                            <li><a href="#">Another One</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="material-icons">person</i>
                                            <p class="hidden-lg hidden-md">Profile</p>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header" data-background-color="purple">
                                            <h4 class="title">Edit Profile</h4>
                                            <p class="category">Complete your profile</p>
                                        </div>
                                        <div class="card-content">
                                            <form>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Username</label>
                                                            <input type="text" class="form-control" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Email address</label>
                                                            <input type="email" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Password</label>
                                                            <input type="password" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Repeat password</label>
                                                            <input type="password" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Fist Name</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Last Name</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-center">
                                                    <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
                                                </div>

                                                <div class="clearfix"></div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <footer class="footer">
                        <div class="container-fluid">
                            <nav class="pull-left">
                                <ul>
                                    <li>
                                        <a href="#">Home
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Company
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Portfolio
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Blog
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <p class="copyright pull-right">
                                &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                                <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                            </p>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
    </form>
</body>
<!--   Core JS Files   -->
<script src="../Shared/Assets/js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="../Shared/Assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../Shared/Assets/js/material.min.js" type="text/javascript"></script>
<!-- Material Dashboard javascript methods -->
<script src="../Shared/Assets/js/material-dashboard.js"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
</html>
