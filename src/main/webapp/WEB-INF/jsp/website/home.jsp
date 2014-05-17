<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>Chaffer</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="/resources/css/parallex/normalize.css">
        <link rel="stylesheet" href="/resources/css/parallex/main.css">
        <script src="/resources/js/parallex/modernizr-2.7.1.min.js"></script>
        <%@ include file="/WEB-INF/jsp/common/pageJS.jsp" %>
        <style type="text/css">
            #slide-3 .bcg {
                height: 350px;
                text-align: center
            }
        </style>
    </head>
    <body>
<!-- Main -->
        <%@ include file="/WEB-INF/jsp/NavigationBar/top_navbar.jsp" %>
 <main>
         
            <section id="slide-1" class="homeSlide" style="height:100%;">
                <div class="bcg">
                    <div class="hsContainer">
                        <div class="hsContent">
                            <h2>Simple parallax scrolling is...</h2>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- HTML -->
<section id="slide-2" class="homeSlide homeSlideTall2">
    <div class="bcg">&nbsp;</div>
    <div class="bcg bcg2"
        data-bottom-top="opacity: 0;"
        data--33p-top="opacity: 0;"
        data--66p-top="opacity: 1;"
        data-anchor-target="#slide-2"
    >
        <div class="hsContainer">
            <div class="hsContent"
                data-bottom-top="opacity: 0;"
                data-center="opacity: 1"
                data-anchor-target="#slide-2"
            >
                <h2>Fixed element fading in and out</h2>
            </div>
        </div>
    </div>
    
</section>
            
            <section id="slide-3">
                <div class="bcg">
                    <div class="hsContainer">
                        <div class="hsContent">
                            <h2>Now go and create your own story</h2>
                        </div>
                    </div>
                    
                </div>
            </section>
        </main>
        
        
        
        
        <!-- Scripts -->
        <script type="text/javascript">
            P.when('jQuery').execute(function($) {
                loadJS('/resources/js/parallex/imagesloaded.js', function() {P.register('imageLoaded');});
                loadJS('/resources/js/parallex/skrollr.js', function() {P.register('skrollr');});
            });
            P.when('jQuery', 'imageLoaded', 'skrollr').execute(function($){
                initialize(this.$);
            });
            var initialize = function( $ ) {
            	$window = $(window);
                $slide = $('.homeSlide');
                $body = $('body');
                
                //FadeIn all sections   
                $body.imagesLoaded( function() {
                          // Resize sections
                          adjustWindow();
                          // Fade in sections
                          $body.removeClass('loading').addClass('loaded');
                });
                
                function adjustWindow(){
                // Get window size
                    winH = $window.height();
                    
                    // Resize our slides
                    $slide.height(winH);
                }
                // Init Skrollr
                var s = skrollr.init({
                    render: function(data) {
                        //Debugging - Log the current scroll position.
                        //console.log(data.curTop);
                    }
                });
            };
        </script>
    </body>
</html>