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

    <!-- Google Maps Api -->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
    
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
			
            var url = false;

            switch (jThis.html()) {
                case "Search":
                    url = "View/Search.htm";
                    break;
                case "Create":
                    url = "View/Create.htm";
                    break;

            }

            if (!url)
                return;

			$.ajax({
					type: "GET",
					url: url,
				}).done(function( data ) {
					$("#view").html(data);
                    initializeView();
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

    /**
    var map;

    function initialize() {
      var mapOptions = {
        zoom: 1,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);

      // Try HTML5 geolocation
      if(navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
          var pos = new google.maps.LatLng(position.coords.latitude,
                                           position.coords.longitude);

          var infowindow = new google.maps.InfoWindow({
            map: map,
            position: pos,
            content: 'Location found using HTML5.'
          });

          map.setCenter(pos);
        }, function() {
          handleNoGeolocation(true);
        });
      } else {
        // Browser doesn't support Geolocation
        handleNoGeolocation(false);
      }
    }

    function handleNoGeolocation(errorFlag) {
      if (errorFlag) {
        var content = 'Error: The Geolocation service failed.';
      } else {
        var content = 'Error: Your browser doesn\'t support geolocation.';
      }

      var options = {
        map: map,
        position: new google.maps.LatLng(60, 105),
        content: content
      };

      var infowindow = new google.maps.InfoWindow(options);
      map.setCenter(options.position);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
    */

</asp:Content>
