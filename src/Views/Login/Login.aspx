﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="lovis.Views.Login.Login" %>

<%@ MasterType VirtualPath="~/Views/Shared/Master.Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <link rel="icon" href="../Shared/Assets/icon/favicon.ico" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Login - Lovis
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="../Shared/Assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="../Shared/Assets/css/material-dashboard.css" rel="stylesheet" />
    <!--  Lovis CSS  -->
    <link href="../Shared/Assets/css/style.css" rel="stylesheet" />
    <!-- Progress bar -->
    <link href="../Shared/Assets/css/pace.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css' />
</head>
<body style="overflow: hidden !important;">
    <form runat="server" id="form1">
        <div class="content">
            <div class="container-fluid form-center">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header" data-background-color="purple">
                                <h2 class="title text-center">Lovis</h2>
                                <p class="category text-center">Keep track of everything</p>
                            </div>
                            <div class="card-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <p runat="server" id="login_error" class="text-danger text-center">User or password incorrect.</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Email address</label>
                                            <asp:TextBox ID="login_username" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Password</label>
                                            <asp:TextBox runat="server" ID="login_password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p>Don't have an account yet? <a href="../Register/Register.aspx">Register</a>.</p>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <asp:Button runat="server" CssClass="btn btn-primary" ID="login_loginbtn" OnClick="login_loginbtn_Click" Text="Log in" />
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--   Core JS Files   -->
    <script src="../Shared/Assets/js/jquery-3.1.0.min.js" type="text/javascript"></script>
    <script src="../Shared/Assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Shared/Assets/js/material.min.js" type="text/javascript"></script>
    <!-- Material Dashboard javascript methods -->
    <script src="../Shared/Assets/js/material-dashboard.js"></script>
    <!-- Progress bar -->
    <script src="../Shared/Assets/js/pace.js"></script>
</body>
</html>
