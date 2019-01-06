var App = function () {
    // Initialize Bootstrap
    function handleBootstrap() {
        jQuery('.carousel').carousel({
            interval: 10000,
            pause: 'hover',
            wrap: true
        });
    }

    //Search Box (Header)
    function handleSearch() {    
        jQuery('.search').click(function () {
            if(jQuery('.search-btn').hasClass('fa-search')){
                jQuery('.search-open').fadeIn(500);
                //DD jQuery('.search-btn').removeClass('fa-search');
                //DD jQuery('.search-btn').addClass('fa-times');
            } else {
                jQuery('.search-open').fadeOut(500);
                jQuery('.search-btn').addClass('fa-search');
                jQuery('.search-btn').removeClass('fa-times');
            }   
        }); 
    }

    //Fixed Header
    function handleHeader() {
         jQuery(window).scroll(function() {
            if (jQuery(window).scrollTop()>100){
                jQuery(".header-fixed .header-sticky").addClass("header-fixed-shrink");
            }
            else {
                jQuery(".header-fixed .header-sticky").removeClass("header-fixed-shrink");
            }
        });
    }

    //Header Mega Menu
    function handleMegaMenu() {
        jQuery(document).on('click', '.mega-menu .dropdown-menu', function(e) {
            e.stopPropagation()
        })
    }

    return {
        init: function () {
            handleBootstrap();
            handleSearch();
            handleHeader();
            handleMegaMenu();
        },
    };

}();
