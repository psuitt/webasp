<%@ Page Title="" Language="C#" MasterPageFile="~/Avent.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="Resources_Pages_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/gumby.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/fullcalendar.print.css" rel="stylesheet" type="text/css" media="print" />

    <script src="../Scripts/jquery-1.10.1.min.js" type="text/javascript" ></script>
    <script src="../Scripts/libs/modernizr-2.6.2.min.js" type="text/javascript" ></script>
    <script src="../Scripts/libs/fullcalendar.js" type="text/javascript" ></script>
    <script src="../Scripts/libs/gumby.min.js" type="text/javascript" ></script>
    <script src="../Scripts/plugins.js" type="text/javascript" ></script>
    <script src="../Scripts/main.js" type="text/javascript" ></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="two columns push_ten">
            <a href="~/Account/Login.aspx" id="HeadLoginStatus" class="signIn" runat="server">Sign In</a>
            <div id="signInDiv">
                <label>Email:</label><input type="text"/>
                <label>Password:</label><input type="password"/>
            </div>
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

<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    //Document ready
	$(document).ready(function() {
		$("#sidebar-nav li a").on("click", function() {
			var jThis = $(this);
			$("#sidebar-nav li").removeClass("selected");
			jThis.parent().addClass("selected");
				
			$.ajax({
					type: "GET",
					url: "home/" + jThis.html().toLowerCase() + ".",
				}).done(function( data ) {
					$("#view").html(data);
				});
				
				
			    // Prevent the anchor link.
			    return false;
		});
        $("#HeadLoginStatus.signIn").on("click", function() {

        });
		//$("#search").autocomplete();
	});
		
	var selectMenuItemColor = function() {
		$("#sidebar-nav ul li a").removeClass("selected");
	};
</asp:Content>
