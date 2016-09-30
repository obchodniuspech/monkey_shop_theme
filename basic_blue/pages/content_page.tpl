    {include(file='header.tpl')}


 
<div class="container">


<div class="row padding-10">
	<div class="col-md-12 padding-10 text-center">
		<h1>{$actual_title}</h1>
	</div>
</div>


{$content}
{*




<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB-p3wEjEB4AJ9gT7o8PYv-z0_BGBmLuGs&sensor=false"></script>

<script type="text/javascript">
    // Vytvořit mapu při načtení stránky
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Nastavení vzhledu mapy
        var mapOptions = {
            // Přiblížení
            zoom: 16,
            // Zeměpisná šířka a délka
            center: new google.maps.LatLng(49.16334, 17.514122),
            scrollwheel:  false,
            draggable: false,
            disableDefaultUI: true,
            // Styl mapy
            styles: [
                {
                    "featureType": "all",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "saturation": 36
                        },
                        {
                            "color": "#333333"
                        },
                        {
                            "lightness": 40
                        }
                    ]
                },
                {
                    "featureType": "all",
                    "elementType": "labels.text.stroke",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 16
                        }
                    ]
                },
                {
                    "featureType": "all",
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#f9f9f9"
                        },
                        {
                            "lightness": 20
                        }
                    ]
                },
                {
                    "featureType": "administrative",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "color": "#fefefe"
                        },
                        {
                            "lightness": 17
                        },
                        {
                            "weight": 1.2
                        }
                    ]
                },
                {
                    "featureType": "landscape",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#efefef"
                        },
                        {
                            "lightness": 20
                        }
                    ]
                },
                {
                    "featureType": "landscape.man_made",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "lightness": "-1"
                        }
                    ]
                },
                {
                    "featureType": "landscape.natural",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "lightness": "0"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e0e0e0"
                        },
                        {
                            "lightness": 21
                        },
                        {
                            "visibility": "on"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#dedede"
                        },
                        {
                            "lightness": 21
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "visibility": "on"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "lightness": "-39"
                        },
                        {
                            "visibility": "on"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 17
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 29
                        },
                        {
                            "weight": 0.2
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 18
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        },
                        {
                            "lightness": 16
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "geometry.stroke",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "lightness": "-10"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#f2f2f2"
                        },
                        {
                            "lightness": 19
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e9e9e9"
                        },
                        {
                            "lightness": 17
                        }
                    ]
                }
            ]
        };

        // Element pro vložení mapy
        var mapElement = document.getElementById('map1');

        // Vytvoření mapy
        var gmap = new google.maps.Map(mapElement, mapOptions);
        var marker_img = {
            size: new google.maps.Size(90, 115),
            origin: new google.maps.Point(0,0),
            anchor: new google.maps.Point(42,110)
          };

        // Přidání ukazatele
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(49.161581, 17.515173),
            map: gmap,
            icon: marker_img
        });
    }
</script>

<div class="container-fluid">
        <div class="row border-bot black">
        <div class="margo">
        <div class="col-lg-offset-1 col-lg-9">
        <div class='margion'>
            <ul class='hidden-sm hidden-xs'>
                <li><a href="http://www.robo-zahrady.cz/"><img class="img-responsive" src="/images/design/logob.png"></a></li>
            </ul>
            <ul class='hidden-sm hidden-xs'style="vertical-align:top;">
            <h3>Fakturační údaje</h3>
           		<li><span style="color:#eca120;" class="glyphicon glyphicon-briefcase"></span>   Czech Wool company s.r.o. </li>
           		<li><span style="color:#eca120;" class="glyphicon glyphicon-briefcase"></span>   IČ: 03922391</li>
		   		<li><span style="color:#eca120;" class="glyphicon glyphicon-map-marker"></span>   Lidická 700/19,602 00 Brno</li>
            </ul>
            <ul class='visiblehier' style="vertical-align:top;">
            <h3>Kancelář</h3>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-map-marker"></span>   2.května 1036 ,Zlín 76001</li>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-envelope"></span>  info@robo-zahrady.cz</li>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-earphone"></span>     +420 773 922 298</li>
            </ul>
        <ul class="hidden-sm hidden-xs" style="vertical-align:top;">
            <h3>Produkty</h3>
                                          <li><a href="/detail_produktu/zavlazovaci-systemy/59">Závlahové systémy</a></li>
                                                         <li><a href="/detail_produktu/realizace-zahrad/60">Realizace zahrad</a></li>
                                                        <li><a href="/detail_produktu/roboticke-sekacky/70">Robotické sekačky</a></li>
                                      </ul>
        </div>
            </div>
        <!--<div class="col-lg-1">
            </div>
            <div class="col-lg-3 col-md-3 space-bet hidden-xs hidden-sm">
            <ul>
                <li><a href="http://www.robo-zahrady.cz/"><img class="img-responsive" src="images/design/logob.png"></a></li>
                <!--<li>3 Column Footer Exampl3 Column<br> Footer Exampl3 Column Footer Example</li>
            </ul>
            </div>
            <div class="col-lg-3 col-md-3 space-bet visiblehier">
            <ul>
            <h3>Fakturační údaje</h3>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-map-marker"></span>   Lidická 700/19,602 00 Brno</li>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-envelope"></span>   info@robo-zahrady.cz</li>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-earphone"></span>     +420 723 065 014</li>
            </ul>
            </div>
            <div class="col-lg-3 col-md-3 space-bet visiblehier">
            <ul>
            <h3>Fakturační údaje</h3>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-map-marker"></span>   Lidická 700/19,602 00 Brno</li>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-envelope"></span>   info@robo-zahrady.cz</li>
                <li><span style="color:#eca120;" class="glyphicon glyphicon-earphone"></span>     +420 723 065 014</li>
            </ul>
            </div>
            <div class="col-lg-1">
            </div>
            <div class="col-lg-3 col-md-3 space-bet hidden-xs hidden-sm">
            <ul class="dot">
            <h3>Produkty</h3>
                            <li><a href="?stranka=detail_produktu&oddil=&kat=59">Závlahové systémy</a></li>
                              <li><a href="?stranka=detail_produktu&oddil=realizace-zahrad&kat=60">Realizace zahrad</a></li>
                              <li><a href="?stranka=detail_produktu&oddil=roboticke-sekacky&kat=70">Robotické sekačky</a></li>
                          </ul>
            </div>-->
            </div>
        </div>
    </div>
    <div class="container-fluid footer">
        <div class="row">
            <p class="footer text-center"><a target="_blank" class="graya" href="http://www.obchodniuspech.cz">©2015 obchodní úspěch</a></p>
                   </div>
    </div>
    <!--vložení-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        function init_map1() {
            var myLocation = new google.maps.LatLng(49.948321, 14.656339);
            var mapOptions = {
                center: myLocation,
                zoom: 16
            };
            var marker = new google.maps.Marker({
                position: myLocation,
                title: "Property Location"
            });
            var map = new google.maps.Map(document.getElementById("map1"),
                mapOptions);
            marker.setMap(map);
        }
        init_map1();
    });
</script>
*}


    </div>
    <!-- /.container -->


	</div>

</div>

<div class="margin-top-15"></div>

    {include(file='footer.tpl')}
