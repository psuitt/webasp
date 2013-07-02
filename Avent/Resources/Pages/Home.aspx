<%@ Page Title="" Language="C#" MasterPageFile="~/Avent.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Resources_Pages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/gumby.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/fullcalendar.print.css" rel="stylesheet" type="text/css" media="print" />
    <script src="../Scripts/libs/modernizr-2.6.2.min.js" type="text/javascript" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript" />
    <script src="../Scripts/libs/fullcalendar.js" type="text/javascript" />
    <script src="../Scripts/libs/gumby.min.js" type="text/javascript" />
    <script src="../Scripts/plugins.js" type="text/javascript" />
    <script src="../Scripts/main.js" type="text/javascript" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="two columns push_ten">
            <a href="~/Account/Login.aspx" id="HeadLoginStatus" runat="server">Sign In</a>
        </div>
    </div>
    <div class="row">
        <div class="five columns centered">
            Event Planning Done Right
        </div>
    </div>
    <div class="row">
        <div class="two columns">
            <ul id="sidebar-nav">
                <li class="selected"><a>Search</a> </li>
                <li><a>Create</a> </li>
                <li><a>Profile</a> </li>
                <li><a>Calendar</a> </li>
            </ul>
        </div>
        <div class="ten columns">
            <div class="valign row">
                <ul class="six columns">
                    <li class="append field">
                        <input id="search" class="text input smalltext va-m" type="text" />
                        <div class="small primary btn va-m">
                            <a href="#">Search</a></div>
                    </li>
                </ul>
            </div>
            <div id="view" class="valign row">
            </div>
        </div>
    </div>
</asp:Content>
