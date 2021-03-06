﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" AutoEventWireup="true" CodeBehind="AddProyect.aspx.cs" Inherits="lovis.Views.Proyects.AddProyect" %>

<%@ MasterType VirtualPath="~/Views/Shared/Master.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Add proyect - Lovis
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ViewContainer" runat="server">

    <div class="content" style="padding: 5px 15px !important;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">Create proyect</h4>
                            <p class="category">Start by adding basic information to it</p>
                        </div>
                        <div class="card-content">
                            <fieldset class="scheduler-border">
                                <legend class="scheduler-border bmargin5">Initial information</legend>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Title</label>
                                            <asp:TextBox runat="server" ID="addp_title" MaxLength="40" CssClass="form-control" required="required"></asp:TextBox>
                                            <div class="help-block">E.g: Facebo- oh wait. </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group label-floating">
                                            <label class="control-label ">Owner</label>
                                            <asp:TextBox runat="server" ID="addp_owner" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            <div class="help-block">Proyect owner. </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-lg-12 col-sm-12">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Summary</label>
                                            <asp:TextBox runat="server" ID="addp_summary" TextMode="multiline" MaxLength="200" Columns="50" Rows="5" CssClass="form-control"></asp:TextBox>
                                            <div class="help-block">E.g: This is an application that connects a lot of people and will make me rich. </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-lg-4 col-sm-4">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Project website</label>
                                            <asp:TextBox runat="server" ID="addp_webiste" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,50}$" CssClass="form-control"></asp:TextBox>
                                            <div class="help-block">E.g: myproyectwebpage.com. </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-sm-4">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Repository website</label>
                                            <asp:TextBox runat="server" ID="addp_repository" pattern="^[a-zA-Z][a-zA-Z0-9-_/.]{1,50}$" CssClass="form-control"></asp:TextBox>
                                            <div class="help-block">E.g: emimontesdeoca/lovis. </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 col-sm-4">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Support email</label>
                                            <asp:TextBox runat="server" TextMode="Email" ID="addp_support" CssClass="form-control"></asp:TextBox>
                                            <div class="help-block">E.g: support@project.com. </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="text-center">
                                <asp:Button runat="server" ID="addp_create" CssClass="btn btn-primary" OnClick="addp_create_Click" Text="Create proyect" />
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
