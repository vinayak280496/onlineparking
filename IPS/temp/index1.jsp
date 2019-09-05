<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>DIGITAL DIARY</title>

        <meta name="description" content="FlatApp is a Premium, Responsive and Flat Bootstrap Admin Dashboard Template created by pixelcave and published on Themeforest.">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- The roboto font is included from Google Web Fonts -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic">

        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="css/bootstrap.css">

        <!-- Related styles of various icon packs and javascript plugins -->
        <link rel="stylesheet" href="css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="css/main.css">

        <!-- Load a specific file here from css/themes/ folder to alter the default theme of all the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements (must included last) -->
        <link rel="stylesheet" href="css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (Browser feature detection library) & Respond.js (Enable responsive CSS code on browsers that don't support it) -->
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>

    <!-- Body -->
    <!-- In the PHP version you can set the following options from the config file -->
    <!-- Add the class .hide-side-content to <body> to hide side content by default -->
    <body>
        <!-- Page Container -->
        <!-- In the PHP version you can set the following options from the config file -->
        <!-- Add the class .full-width for a full width page -->
        <div id="page-container" class="full-width">
            <!-- Header -->
            <!-- In the PHP version you can set the following options from the config file -->
            <!-- Add the class .navbar-fixed-top or .navbar-fixed-bottom for a fixed header on top or bottom respectively -->
            <!-- If you add the class .navbar-fixed-top remember to add the class .header-fixed-top to <body> element! -->
            <!-- If you add the class .navbar-fixed-bottom remember to add the class .header-fixed-bottom to <body> element! -->
            <!-- <header class="navbar navbar-inverse navbar-fixed-top"> -->
            <!-- <header class="navbar navbar-inverse navbar-fixed-bottom"> -->
            <header class="navbar navbar-inverse">
                <!-- Navbar Inner -->
                <div class="navbar-inner">
                    <!-- div#row-fluid -->
                    <div class="row-fluid">
                        <!-- Sidebar Toggle Buttons (Desktop & Tablet) -->
                        <div class="span4 hidden-phone">
                            <ul class="nav pull-left">
                                <!-- Desktop Button (Visible only on desktop resolutions) -->
                                <li class="visible-desktop">
                                    <a href="javascript:void(0)" id="toggle-side-content">
                                        <i class="icon-reorder"></i>
                                    </a>
                                </li>
                                <!-- END Desktop Button -->

                                <!-- Tablet Button -->
                                <li class="visible-tablet">
                                    <!-- It is set to open and close the left sidebar on tablets. The class .nav-collapse was added to aside#page-sidebar -->
                                    <a href="javascript:void(0)" data-toggle="collapse" data-target=".nav-collapse">
                                        <i class="icon-reorder"></i>
                                    </a>
                                </li>
                                <!-- END Tablet Button -->

                                <!-- Divider -->
                                <li class="divider-vertical remove-margin"></li>
                            </ul>
                        </div>
                        <!-- END Sidebar Toggle Buttons -->

                        <!-- Brand and Search Section -->
                        <div class="span4 text-center">
                            <!-- Top search -->
                            <form id="top-search" class="pull-left" action="page_ready_search_results.html" method="post">
                                <input type="text" id="search-term" name="search-term" placeholder="Search..">
                            </form>
                            <!-- END Top search -->

                            <!-- Logo -->
                            <a href="index.html" class="brand">
                                <img src="img/template/logo.png" alt="logo">
                            </a>
                            <!-- END Logo -->

                            <!-- Loading Indicator, Used for demostrating how loading of notifications could happen, check main.js - uiDemo() -->
                            <div id="loading" class="hide"><i class="icon-spinner icon-spin"></i></div>
                        </div>
                        <!-- END Brand and Search Section -->

                        <!-- Header Nav Section -->
                        <div id="header-nav-section" class="span4 clearfix">
                            <!-- Header Nav -->
                            <ul class="nav pull-right">
                                <!-- Theme Options, functionality initialized at main.js - templateOptions() -->
                                <li class="dropdown dropdown-theme-options">
                                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">Theme Options</a>
                                    <ul class="dropdown-menu">
                                        <!-- Page Options -->
                                        <li class="theme-extra visible-desktop">
                                            <label for="theme-page-full">
                                                <input type="checkbox" id="theme-page-full" name="theme-page-full" class="input-themed">
                                                Full width page
                                            </label>
                                        </li>
                                        <!-- END Page Options -->

                                        <!-- Divider -->
                                        <li class="divider visible-desktop"></li>

                                        <!-- Sidebar Options -->
                                        <li class="theme-extra visible-desktop">
                                            <label for="theme-sidebar-sticky">
                                                <input type="checkbox" id="theme-sidebar-sticky" name="theme-sidebar-sticky" class="input-themed">
                                                Sticky Sidebar
                                            </label>
                                        </li>
                                        <!-- END Sidebar Options -->

                                        <!-- Divider -->
                                        <li class="divider visible-desktop"></li>

                                        <!-- Header Options -->
                                        <li class="theme-extra visible-desktop">
                                            <label for="theme-header-top">
                                                <input type="checkbox" id="theme-header-top" name="theme-header-top" class="input-themed">
                                                Top fixed header
                                            </label>
                                            <label for="theme-header-bottom">
                                                <input type="checkbox" id="theme-header-bottom" name="theme-header-bottom" class="input-themed">
                                                Bottom fixed header
                                            </label>
                                        </li>
                                        <!-- END Header Options -->

                                        <!-- Divider -->
                                        <li class="divider visible-desktop"></li>

                                        <!-- Color Themes -->
                                        <li>
                                            <ul class="theme-colors clearfix">
                                                <li class="active">
                                                    <a href="javascript:void(0)" class="img-circle themed-background-default themed-border-default" data-theme="default" data-toggle="tooltip" title="Default"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-amethyst themed-border-amethyst" data-theme="css/themes/amethyst.css" data-toggle="tooltip" title="Amethyst"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-army themed-border-army" data-theme="css/themes/army.css" data-toggle="tooltip" title="Army"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-asphalt themed-border-asphalt" data-theme="css/themes/asphalt.css" data-toggle="tooltip" title="Asphalt"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-autumn themed-border-autumn" data-theme="css/themes/autumn.css" data-toggle="tooltip" title="Autumn"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-cherry themed-border-cherry" data-theme="css/themes/cherry.css" data-toggle="tooltip" title="Cherry"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-city themed-border-city" data-theme="css/themes/city.css" data-toggle="tooltip" title="City"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-dawn themed-border-dawn" data-theme="css/themes/dawn.css" data-toggle="tooltip" title="Dawn"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-deepsea themed-border-deepsea" data-theme="css/themes/deepsea.css" data-toggle="tooltip" title="Deepsea"></a>
                                                </li>
                                                <li><a href="javascript:void(0)" class="img-circle themed-background-diamond themed-border-diamond" data-theme="css/themes/diamond.css" data-toggle="tooltip" title="Diamond"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-fire themed-border-fire" data-theme="css/themes/fire.css" data-toggle="tooltip" title="Fire"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-grass themed-border-grass" data-theme="css/themes/grass.css" data-toggle="tooltip" title="Grass"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-leaf themed-border-leaf" data-theme="css/themes/leaf.css" data-toggle="tooltip" title="Leaf"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-night themed-border-night" data-theme="css/themes/night.css" data-toggle="tooltip" title="Night"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-ocean themed-border-ocean" data-theme="css/themes/ocean.css" data-toggle="tooltip" title="Ocean"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-oil themed-border-oil" data-theme="css/themes/oil.css" data-toggle="tooltip" title="Oil"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-stone themed-border-stone" data-theme="css/themes/stone.css" data-toggle="tooltip" title="Stone"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-sun themed-border-sun" data-theme="css/themes/sun.css" data-toggle="tooltip" title="Sun"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-tulip themed-border-tulip" data-theme="css/themes/tulip.css" data-toggle="tooltip" title="Tulip"></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" class="img-circle themed-background-wood themed-border-wood" data-theme="css/themes/wood.css" data-toggle="tooltip" title="Wood"></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <!-- END Color Themes -->
                                    </ul>
                                </li>
                                <!-- END Theme Options -->

                                <!-- Divider -->
                                <li class="divider-vertical remove-margin"></li>

                                <!-- Notifications -->
                                <li class="dropdown dropdown-notifications">
                                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-warning-sign"></i>
                                        <span class="badge badge-neutral">4</span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="alert">
                                                <i class="icon-bell"></i> <strong>App</strong> Please pay attention!
                                            </div>
                                            <div class="alert alert-error">
                                                <i class="icon-bell-alt"></i> <strong>App</strong> There was an error!
                                            </div>
                                            <div class="alert alert-info">
                                                <i class="icon-bolt"></i> <strong>App</strong> Info message!
                                            </div>
                                            <div class="alert alert-success">
                                                <i class="icon-bullhorn"></i> <strong>App</strong> Service restarted!
                                            </div>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="icon-warning-sign pull-right"></i>Notification Center</a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- END Notifications -->

                                <!-- Messages -->
                                <li class="dropdown dropdown-messages">
                                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-envelope-alt"></i>
                                        <span class="badge badge-neutral display-none"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="media">
                                                <a class="pull-left" href="javascript:void(0)" data-toggle="tooltip" title="Newbie">
                                                    <img src="img/placeholders/image_64x64_dark.png" alt="fakeimg" class="img-circle">
                                                </a>
                                                <div class="media-body">
                                                    <h5 class="media-heading clearfix"><span class="label label-success">1 min ago</span><a href="javascript:void(0)">Username</a></h5>
                                                    <div class="media">Lorem ipsum dolor sit amet, consectetur..</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <div class="media">
                                                <a class="pull-left" href="javascript:void(0)" data-toggle="tooltip" title="Pro">
                                                    <img src="img/placeholders/image_64x64_dark.png" alt="fakeimg" class="img-circle">
                                                </a>
                                                <div class="media-body">
                                                    <h5 class="media-heading clearfix"><span class="label label-success">2 hours ago</span><a href="javascript:void(0)">Username</a></h5>
                                                    <div class="media">Lorem ipsum dolor sit amet, consectetur..</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <div class="media">
                                                <a class="pull-left" href="javascript:void(0)" data-toggle="tooltip" title="VIP">
                                                    <img src="img/placeholders/image_64x64_dark.png" alt="fakeimg" class="img-circle">
                                                </a>
                                                <div class="media-body">
                                                    <h5 class="media-heading clearfix"><a href="javascript:void(0)">Username</a><span class="label label-success">3 days ago</span></h5>
                                                    <div class="media">Lorem ipsum dolor sit amet, consectetur..</div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="page_comp_inbox.html"><i class="icon-envelope-alt pull-right"></i>Message Center</a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- END Messages -->
                            </ul>
                            <!-- END Header Nav -->

                            <!-- Mobile Navigation, Shows up on mobile -->
                            <ul class="nav pull-left visible-phone">
                                <li>
                                    <!-- It is set to open and close the main navigation on mobiles. The class .nav-collapse was added to aside#page-sidebar -->
                                    <a href="javascript:void(0)" data-toggle="collapse" data-target=".nav-collapse">
                                        <i class="icon-reorder"></i>
                                    </a>
                                </li>
                                <li class="divider-vertical remove-margin"></li>
                            </ul>
                            <!-- END Mobile Navigation, Shows up on mobile -->
                        </div>
                        <!-- END Header Nav Section -->
                    </div>
                    <!-- END div#row-fluid -->
                </div>
                <!-- END Navbar Inner -->
            </header>
            <!-- END Header -->
            <!-- Left Sidebar -->
            <!-- In the PHP version you can set the following options from the config file -->
            <!-- Add the class .sticky for a sticky sidebar -->
            <aside id="page-sidebar" class="nav-collapse collapse">
                <!--
                Wrapper for scrolling functionality

                Used only if the .sticky class added above. You can remove it and you will have a sticky sidebar
                without scrolling enabled when you set the sidebar to be sticky
                -->
                <div class="side-scrollable">
                    <!-- Mini Profile -->
                    <div class="mini-profile">
                        <div class="mini-profile-options">
                            <a href="javascript:void(0)" class="badge badge-info loading-on" data-toggle="tooltip" data-placement="right" title="Refresh">
                                <i class="icon-refresh"></i>
                            </a>
                            <a href="page_ready_shopping_cart.html" class="badge badge-warning" data-toggle="tooltip" data-placement="right" title="6 Products">
                                <i class="glyphicon-shopping_cart"></i>
                            </a>
                            <!-- Modal div is at the bottom of the page before including javascript code, we use .enable-tooltip class for the tooltip because data-toggle is used for modal -->
                            <a href="#modal-user-account" class="badge badge-success enable-tooltip" role="button" data-toggle="modal" data-placement="right" title="Settings">
                                <i class="glyphicon-cogwheel"></i>
                            </a>
                            <a href="page_login.html" class="badge badge-important" data-toggle="tooltip" data-placement="right" title="Log out">
                                <i class="icon-signout"></i>
                            </a>
                        </div>
                        <a href="page_ready_user_profile.html">
                            <img src="img/template/avatar2.jpg" alt="Avatar" class="img-circle">
                        </a>
                    </div>
                    <!-- END Mini Profile -->

                    <!-- Sidebar Tabs -->
                    <div class="sidebar-tabs-con">
                        <ul class="sidebar-tabs" data-toggle="tabs">
                            <li class="active">
                                <a href="#side-tab-menu"><i class="glyphicon-list"></i></a>
                            </li>
                            <li>
                                <a href="#side-tab-extra"><i class="glyphicon-user"></i></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="side-tab-menu">
                                <!-- Primary Navigation -->
                                <nav id="primary-nav">
                                    <ul>
                                        <li>
                                            <a href="index.html" class=" active"><i class="glyphicon-display"></i>Dashboard</a>
                                        </li>
                                        <li>
                                            <a href="#" class="menu-link"><i class="glyphicon-vector_path_curve"></i>User Interface</a>
                                            <ul>
                                                <li>
                                                    <a href="page_ui_blocks.html">Blocks</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_grid.html">Grid</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_typography.html">Typography</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_navigation.html">Navigation</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_tabs_accordions.html">Tabs &amp; Accordions</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_buttons_dropdowns.html">Buttons &amp; Dropdowns</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_progress_bars.html">Progress Bars</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_carousel.html">Carousel</a>
                                                </li>
                                                <li>
                                                    <a href="page_ui_extras.html">Extras</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="menu-link"><i class="glyphicon-table"></i>Tables</a>
                                            <ul>
                                                <li>
                                                    <a href="page_tables_static.html">Static</a>
                                                </li>
                                                <li>
                                                    <a href="page_tables_dynamic.html">Dynamic</a>
                                                </li>
                                                <li>
                                                    <a href="page_tables_editable.html">Editable</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="menu-link"><i class="glyphicon-more_windows"></i>Forms</a>
                                            <ul>
                                                <li>
                                                    <a href="page_forms_general.html">General</a>
                                                </li>
                                                <li>
                                                    <a href="page_forms_layouts_styles.html">Layouts &amp; Styles</a>
                                                </li>
                                                <li>
                                                    <a href="page_forms_pickers_grid.html">Pickers &amp; Grid</a>
                                                </li>
                                                <li>
                                                    <a href="page_forms_textareas_wysiwyg.html">Textareas &amp; WYSIWYG</a>
                                                </li>
                                                <li>
                                                    <a href="page_forms_upload_dropzone.html">File Upload &amp; Dropzone</a>
                                                </li>
                                                <li>
                                                    <a href="page_forms_validation.html">Validation</a>
                                                </li>
                                                <li>
                                                    <a href="page_forms_wizard.html">Wizard</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="menu-link"><i class="glyphicon-fire"></i>Components</a>
                                            <ul>
                                                <li>
                                                    <a href="page_comp_inbox.html">Inbox</a>
                                                </li>
                                                <li>
                                                    <a href="page_comp_chat.html">Chat</a>
                                                </li>
                                                <li>
                                                    <a href="page_comp_timeline.html">Timeline</a>
                                                </li>
                                                <li>
                                                    <a href="page_comp_tiles.html">Tiles</a>
                                                </li>
                                                <li>
                                                    <a href="page_comp_gallery.html">Gallery</a>
                                                </li>
                                                <li>
                                                    <a href="page_comp_charts.html">Charts</a>
                                                </li>
                                                <li>
                                                    <a href="page_comp_calendar.html">Calendar</a>
                                                </li>
                                                <li>
                                                    <a href="#" class="submenu-link">Maps</a>
                                                    <ul>
                                                        <li>
                                                            <a href="page_comp_vector_maps.html">Vector Maps</a>
                                                        </li>
                                                        <li>
                                                            <a href="page_comp_google_maps.html">Google Maps</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="page_comp_syntax_highlighting.html">Syntax Highlighting</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="menu-link"><i class="glyphicon-pizza"></i>Icon Packs</a>
                                            <ul>
                                                <li>
                                                    <a href="page_icons_glyphicons_pro.html">Glyphicons Pro</a>
                                                </li>
                                                <li>
                                                    <a href="page_icons_glyphicons_halflings_pro.html">Glyphicons Halflings Pro</a>
                                                </li>
                                                <li>
                                                    <a href="page_icons_fontawesome.html">FontAwesome</a>
                                                </li>
                                                <li>
                                                    <a href="page_icons_gemicon.html">Gemicon</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#" class="menu-link"><i class="glyphicon-certificate"></i>Ready UI</a>
                                            <ul>
                                                <li>
                                                    <a href="page_ready_search_results.html">Search Results</a>
                                                </li>
                                                <li>
                                                    <a href="page_ready_user_profile.html">User Profile</a>
                                                </li>
                                                <li>
                                                    <a href="page_ready_pricing_tables.html">Pricing Tables</a>
                                                </li>
                                                <li>
                                                    <a href="#" class="submenu-link">e-Shop</a>
                                                    <ul>
                                                        <li>
                                                            <a href="page_ready_product.html">Product</a>
                                                        </li>
                                                        <li>
                                                            <a href="page_ready_products_list.html">Products List</a>
                                                        </li>
                                                        <li>
                                                            <a href="page_ready_shopping_cart.html">Shopping Cart</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="page_ready_invoice.html">Invoice</a>
                                                </li>
                                                <li>
                                                    <a href="page_ready_article.html">Article</a>
                                                </li>
                                                <li>
                                                    <a href="page_ready_faq.html">FAQ</a>
                                                </li>
                                                <li>
                                                    <a href="#" class="submenu-link">Errors</a>
                                                    <ul>
                                                        <li>
                                                            <a href="page_ready_errors.html">In-Page</a>
                                                        </li>
                                                        <li>
                                                            <a href="page_ready_standalone_error.html">Standalone</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="page_ready_blank.html">Blank</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="page_landing.html"><i class="glyphicon-leaf"></i>Landing Page</a>
                                        </li>
                                        <li>
                                            <a href="page_login.html"><i class="glyphicon-power"></i>Login Page</a>
                                        </li>
                                    </ul>
                                </nav>
                                <!-- END Primary Navigation -->
                            </div>
                            <div class="tab-pane tab-pane-side" id="side-tab-extra">
                                <h5><i class="icon-briefcase pull-right"></i>Balance</h5>
                                <div class="side-stat text-center text-info"><strong>$25.230,<small>00</small></strong></div>

                                <h5><i class="icon-dollar pull-right"></i>Earnings (today)</h5>
                                <div class="side-stat text-center text-info"><strong>$1.752,<small>00</small></strong></div>

                                <h5><i class="icon-shopping-cart pull-right"></i>Sales (today)</h5>
                                <div class="side-stat text-center text-info"><strong>368</strong></div>

                                <h5><i class="icon-shopping-cart pull-right"></i>Sales (this month)</h5>
                                <div class="side-stat text-center text-success"><strong>+38%</strong></div>

                                <h5><i class="icon-ticket pull-right"></i>Open Tickets</h5>
                                <div class="side-stat text-center text-warning"><strong>23</strong></div>

                                <h5><i class="icon-bug pull-right"></i>Bugs to fix</h5>
                                <div class="side-stat text-center text-error"><strong>1</strong> (important)</div>
                                <div class="side-stat text-center text-warning"><strong>3</strong> (normal)</div>
                            </div>
                        </div>
                    </div>
                    <!-- END Sidebar Tabs -->
                </div>
                <!-- END Wrapper for scrolling functionality -->
            </aside>
            <!-- END Left Sidebar -->
            <!-- Pre Page Content -->
            <div id="pre-page-content">
                <h1><i class="glyphicon-dashboard themed-color"></i>Dashboard<br><small>Welcome <strong>Admin</strong>, everything looks good!</small></h1>
            </div>
            <!-- END Pre Page Content -->

            <!-- Page Content -->
            <div id="page-content">
                <!-- Dashboard Tiles Block -->
                <div class="block block-tiles block-tiles-animated clearfix">
                    <a href="javascript:void(0)" class="tile tile-height-2x tile-themed themed-background-tulip">
                        <i class="icon-envelope"></i>
                        <div class="tile-info">
                            <div class="pull-left">Messages</div>
                            <div class="pull-right"><strong>5</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-height-2x tile-themed themed-background-fire">
                        <i class="icon-rocket"></i>
                        <div class="tile-info">
                            <div class="pull-left">Sales</div>
                            <div class="pull-right"><strong>50k</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-width-2x tile-height-2x tile-themed themed-background-leaf">
                        <i class="icon-flag-checkered"></i>
                        <div class="tile-info">
                            <div class="pull-left">Profit</div>
                            <div class="pull-right"><strong>500k</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-height-2x tile-themed themed-background-city">
                        <i class="icon-ticket"></i>
                        <div class="tile-info">
                            <div class="pull-left">Tickets</div>
                            <div class="pull-right"><strong>112</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-height-2x tile-themed themed-background-night">
                        <i class="icon-cloud-download"></i>
                        <div class="tile-info">
                            <div class="pull-left">Downloads</div>
                            <div class="pull-right"><strong>1.5m</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-width-2x tile-themed themed-background-amethyst">
                        <i class="icon-group"></i>
                        <div class="tile-info">
                            <div class="pull-left">Users</div>
                            <div class="pull-right"><strong>593k</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-themed themed-background-sun">
                        <i class="icon-smile"></i>
                        <div class="tile-info"><strong>1000</strong> Smiles!</div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-themed themed-background-wood">
                        <i class="icon-gamepad"></i>
                        <div class="tile-info"><strong>75</strong> Video Games</div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-themed themed-background-deepsea">
                        <i class="icon-facebook"></i>
                        <div class="tile-info">
                            <div class="pull-left">Likes</div>
                            <div class="pull-right"><strong>212k</strong></div>
                        </div>
                    </a>
                    <a href="javascript:void(0)" class="tile tile-themed themed-background-ocean">
                        <i class="icon-twitter"></i>
                        <div class="tile-info">
                            <div class="pull-left">Followers</div>
                            <div class="pull-right"><strong>153k</strong></div>
                        </div>
                    </a>
				                <a href="javascript:void(0)" class="tile tile-width-2x tile-themed themed-background-amethyst">
                        <i class="icon-group"></i>
                        <div class="tile-info">
                            <div class="pull-left">Users</div>
                            <div class="pull-right"><strong>593k</strong></div>
                        </div>
                    </a>
    	
                </div>
                <!-- END Dashboard Tiles Block -->

                <!-- Live Updates Block -->
                <div class="block block-themed">
                    <!-- Live Updates Title -->
                    <div class="block-title">
                        <h4><i id="dash-timeline-icon" class="icon-spinner icon-spin"></i> App Live</h4>
                    </div>
                    <!-- END Live Updates Title -->

                    <!-- Live Updates Content -->
                    <div class="block-content">
                        <!-- Timeline Container -->
                        <div class="timeline-container">
                            <!-- Scrolling -->
                            <div class="timeline-scrollable">
                                <!-- Timeline -->
                                <ul class="timeline">
                                    <li class="clearfix">
                                        <i class="timeline-meta-cat icon-comments themed-background-leaf"></i>
                                        <span class="timeline-meta-time">1 min ago</span>
                                        <img src="img/template/avatar.jpg" alt="Avatar" class="timeline-avatar">
                                        <span class="timeline-title"><a href="page_ready_user_profile.html">John Doe</a> just commented on an <a href="page_ready_article.html">Article</a></span>
                                        <span class="timeline-text">Hi, I think that it's a great article! Keep it up!</span>
                                    </li>
                                    <li>
                                        <i class="timeline-meta-cat icon-cog themed-background-city"></i>
                                        <span class="timeline-meta-time">5 min ago</span>
                                        <span class="timeline-title">System Update</span>
                                        <span class="timeline-text"><strong>App</strong> updated to 2.0 version! Please check <a href="page_ready_faq.html">FAQ</a> for more info!</span>
                                    </li>
                                    <li class="clearfix">
                                        <i class="timeline-meta-cat icon-comments themed-background-leaf"></i>
                                        <span class="timeline-meta-time">3 hours ago</span>
                                        <img src="img/placeholders/image_64x64_dark.png" alt="Avatar" class="timeline-avatar">
                                        <span class="timeline-title"><a href="page_ready_user_profile.html">Chloe</a> just commented on an <a href="page_ready_product.html">Product</a></span>
                                        <span class="timeline-text">Its a great product! I highly recommend it!</span>
                                    </li>
                                    <li>
                                        <i class="timeline-meta-cat icon-pencil themed-background-tulip"></i>
                                        <span class="timeline-meta-time">4 hours ago</span>
                                        <span class="timeline-title">Page Edited</span>
                                        <span class="timeline-text"><a href="page_ready_pricing_tables.html">Pricing Tables</a></span>
                                    </li>
                                    <li class="clearfix">
                                        <i class="timeline-meta-cat glyphicon-picture themed-background-wood"></i>
                                        <span class="timeline-meta-time">1 day ago</span>
                                        <img src="img/placeholders/image_64x64_dark.png" alt="Avatar" class="timeline-avatar">
                                        <span class="timeline-title"><a href="page_ready_user_profile.html">Michael</a> just added 1 new photo</span>
                                        <a href="img/placeholders/image_720x450_light.png" data-toggle="lightbox-image"><img src="img/placeholders/image_160x120_light.png" alt="image"></a>
                                    </li>
                                    <li class="clearfix">
                                        <i class="timeline-meta-cat glyphicon-circle_plus themed-background-diamond"></i>
                                        <span class="timeline-meta-time">1 day ago</span>
                                        <img src="img/placeholders/image_64x64_dark.png" alt="Avatar" class="timeline-avatar">
                                        <span class="timeline-title"><a href="page_ready_user_profile.html">Estelle</a> just added 1 new <a href="page_ready_article.html">Article</a></span>
                                        <p class="timeline-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices, justo vel imperdiet gravida, urna ligula hendrerit nibh, ac cursus nibh sapien in purus. Mauris tincidunt tincidunt turpis in porta. Integer fermentum tincidunt auctor. Vestibulum ullamcorper, odio sed rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque? Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales! Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec ultrices. Sed at mi velit. Ut egestas tempor est, in cursus enim venenatis eget! Nulla quis ligula ipsum. Donec vitae ultrices dolor?</p>
                                        <p class="timeline-text remove-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices, justo vel imperdiet gravida, urna ligula hendrerit nibh, ac cursus nibh sapien in purus. Mauris tincidunt tincidunt turpis in porta. Integer fermentum tincidunt auctor. Vestibulum ullamcorper, odio sed rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque? Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales! Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec ultrices. Sed at mi velit. Ut egestas tempor est, in cursus enim venenatis eget! Nulla quis ligula ipsum. Donec vitae ultrices dolor?</p>
                                    </li>
                                </ul>
                                <!-- END Timeline -->
                            </div>
                            <!-- END Scrolling -->
                        </div>
                        <!-- END Timeline Container -->
                    </div>
                    <!-- END Live Updates Content -->
                </div>
                <!-- END Live Updates Block -->

                <!-- div.row-fluid -->
                <div class="row-fluid">
                    <!-- Messages and Notifications -->
                    <div class="span6">
                        <div class="block block-tabs block-themed">
                            <div class="block-options">
                                <a href="javascript:void(0)" class="btn btn-inverse" data-toggle="tooltip" title="Settings"><i class="icon-cog"></i></a>
                            </div>
                            <ul class="nav nav-tabs" data-toggle="tabs">
                                <li class="active"><a href="#dashboard-notifications" data-toggle="tooltip" title="Latest Notifications"><i class="icon-bullhorn"></i></a></li>
                                <li><a href="#dashboard-messages" data-toggle="tooltip" title="Latest Messages"><i class="icon-envelope"></i></a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="dashboard-notifications">
                                    <div class="scrollable">
                                        <!-- App Notifications -->
                                        <h4 class="sub-header"><i class="icon-file"></i> App</h4>
                                        <div class="alert alert-success">
                                            <i class="icon-ok"></i> Everything went well! <strong>(2 hours ago)</strong>
                                        </div>
                                        <div class="alert alert-info">
                                            <i class="icon-bullhorn"></i> Info Message! <strong>(12 hours ago)</strong>
                                        </div>
                                        <div class="alert">
                                            <i class="icon-warning-sign"></i> Please pay attention! <strong>(yesterday)</strong>
                                        </div>
                                        <div class="alert alert-error">
                                            <i class="icon-remove-sign"></i> There was an error! <strong>(last month)</strong>
                                        </div>
                                        <!-- END App Notifications -->

                                        <!-- Server Notifications -->
                                        <h4 class="sub-header"><i class="icon-hdd"></i> Server</h4>
                                        <div class="alert alert-success">
                                            <i class="icon-ok"></i> Service restarted! <strong>(1 hour ago)</strong>
                                        </div>
                                        <div class="alert alert-info">
                                            <i class="icon-bullhorn"></i> Apache updated! <strong>(5 hour ago)</strong>
                                        </div>
                                        <div class="alert">
                                            <i class="icon-warning-sign"></i> Please pay attention! <strong>(12 hours ago)</strong>
                                        </div>
                                        <div class="alert alert-error">
                                            <i class="icon-remove-sign"></i> There was an error! <strong>(last week)</strong>
                                        </div>
                                        <!-- END Server Notifications -->
                                    </div>
                                </div>
                                <div class="tab-pane" id="dashboard-messages">
                                    <div class="scrollable">
                                        <!-- Message #1 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_dark.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">22:43</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #1 -->

                                        <!-- Message #2 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_light.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">21:00</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #2 -->

                                        <!-- Message #3 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_dark.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">20:41</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #3 -->

                                        <!-- Message #4 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_light.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">17:14</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>

                                        <!-- END Message #4 -->

                                        <!-- Message #5 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_dark.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">15:12</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #5 -->

                                        <!-- Message #6 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_light.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">13:10</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #6 -->

                                        <!-- Message #7 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_dark.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">12:05</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #7 -->

                                        <!-- Message #8 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_light.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">11:00</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #8 -->

                                        <!-- Message #9 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_dark.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">10:23</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #9 -->

                                        <!-- Message #10 -->
                                        <div class="media">
                                            <a href="javascript:void(0)" class="pull-left" data-toggle="tooltip" title="Username">
                                                <img src="img/placeholders/image_64x64_light.png" class="media-object img-circle" alt="Image">
                                            </a>
                                            <div class="media-body">
                                                <h5 class="media-heading">
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Reply"><i class="icon-reply"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-neutral" data-toggle="tooltip" title="Archive"><i class="icon-folder-open"></i></a>
                                                    <a href="javascript:void(0)" class="badge badge-important" data-toggle="tooltip" title="Delete"><i class="icon-trash"></i></a>
                                                    <span class="label label-info">May 20, 2013</span>
                                                    <span class="label label-warning">08:35</span>
                                                </h5>
                                                <p>This new idea is really awesome! I can't wait till we get started.. <a href="javascript:void(0)" class="badge badge-inverse">Read more</a></p>
                                            </div>
                                        </div>
                                        <!-- END Message #10 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Messages and Notifications -->

                    <!-- Charts & Maps -->
                    <div class="span6">
                        <div class="block block-tabs block-themed">
                            <div class="block-options-left">
                                <a href="javascript:void(0)" class="btn btn-inverse" data-toggle="tooltip" title="Settings"><i class="icon-cog"></i></a>
                            </div>
                            <ul class="nav nav-tabs" data-toggle="tabs">
                                <li class="pull-right active"><a href="#dashboard-stats" data-toggle="tooltip" title="Quick App Statistics"><i class="icon-bar-chart"></i> Quick Stats</a></li>
                                <li class="pull-right"><a href="#dashboard-maps" data-toggle="tooltip" title="A map can be useful"><i class="icon-globe"></i> Map</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="dashboard-stats">
                                    <div id="dashboard-chart"></div>
                                </div>
                                <div class="tab-pane" id="dashboard-maps">
                                    <div id="dashboard-map" class="gmap-con"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Charts & Maps -->
                </div>
                <!-- END div.row-fluid -->

                <!-- Latest Uploaded Projects Block -->
                <div class="block block-themed block-last">
                    <!-- Latest Uploaded Projects Title -->
                    <div class="block-title">
                        <div class="block-options">
                            <div class="btn-group">
                                <a href="javascript:void(0)" class="btn btn-inverse" data-toggle="tooltip" title="Share on Facebook"><i class="icon-facebook"></i></a>
                                <a href="javascript:void(0)" class="btn btn-inverse" data-toggle="tooltip" title="Share on Twitter"><i class="icon-twitter"></i></a>
                                <a href="javascript:void(0)" class="btn btn-inverse" data-toggle="tooltip" title="Settings"><i class="icon-cog"></i></a>
                                <a href="javascript:void(0)" class="btn btn-inverse dropdown-toggle" data-toggle="dropdown"><i class="icon-angle-down"></i></a>
                                <ul class="dropdown-menu pull-right">
                                    <li class="active"><a href="javascript:void(0)">Today</a></li>
                                    <li><a href="javascript:void(0)">Yesterday</a></li>
                                    <li class="divider"></li>
                                    <li><a href="javascript:void(0)">Web Design</a></li>
                                    <li><a href="javascript:void(0)">App Design</a></li>
                                </ul>
                            </div>
                        </div>
                        <h4><i class="icon-cloud-upload"></i> Latest Uploaded Projects</h4>
                    </div>
                    <!-- END Latest Uploaded Projects Title -->

                    <!-- Latest Uploaded Projects Content -->
                    <div class="block-content">
                        <div class="gallery" data-toggle="lightbox-gallery">
                            <div class="row-fluid row-items">
                                <div class="span2">
                                    <a href="img/placeholders/image_720x450_dark.png" class="gallery-link">
                                        <img src="img/placeholders/image_720x450_dark.png" alt="image">
                                    </a>
                                </div>
                                <div class="span2">
                                    <a href="img/placeholders/image_720x450_light.png" class="gallery-link">
                                        <img src="img/placeholders/image_720x450_light.png" alt="image">
                                    </a>
                                </div>
                                <div class="span2">
                                    <a href="img/placeholders/image_720x450_dark.png" class="gallery-link">
                                        <img src="img/placeholders/image_720x450_dark.png" alt="image">
                                    </a>
                                </div>
                                <div class="span2">
                                    <a href="img/placeholders/image_720x450_light.png" class="gallery-link">
                                        <img src="img/placeholders/image_720x450_light.png" alt="image">
                                    </a>
                                </div>
                                <div class="span2">
                                    <a href="img/placeholders/image_720x450_dark.png" class="gallery-link">
                                        <img src="img/placeholders/image_720x450_dark.png" alt="image">
                                    </a>
                                </div>
                                <div class="span2">
                                    <a href="img/placeholders/image_720x450_light.png" class="gallery-link">
                                        <img src="img/placeholders/image_720x450_light.png" alt="image">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Latest Uploaded Projects Content -->
                </div>
                <!-- END Latest Uploaded Projects Block -->
            </div>
            <!-- END Page Content -->

            <!-- Footer -->
            <footer>
                <div class="pull-right">
                    Crafted with <i class="icon-heart"></i> by <strong><a href="http://goo.gl/vNS3I" target="_blank">pixelcave</a></strong>
                </div>
                <div class="pull-left">
                    <span id="year-copy"></span> &copy; <strong><a href="http://goo.gl/mssAH" target="_blank">FlatApp 1.2.1</a></strong>
                </div>
            </footer>
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->

        <!-- Scroll to top link, check main.js - scrollToTop() -->
        <a href="#" id="to-top"><i class="icon-chevron-up"></i></a>

        <!-- User Modal Account, appears when clicking on 'User Settings' link found on user dropdown menu (header, top right) -->
        <div id="modal-user-account" class="modal hide fade">
            <!-- Modal Body -->
            <div class="modal-body remove-padding">
                <!-- Modal Tabs -->
                <div class="block-tabs">
                    <div class="block-options">
                        <a href="javascript:void(0)" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove"></i></a>
                    </div>
                    <ul class="nav nav-tabs" data-toggle="tabs">
                        <li class="active"><a href="#modal-user-account-account"><i class="icon-cog"></i> Account</a></li>
                        <li><a href="#modal-user-account-profile"><i class="icon-user"></i> Profile</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- Account Tab Content -->
                        <div class="tab-pane active" id="modal-user-account-account">
                            <form action="index.html" method="post" class="form-horizontal" onsubmit="return false;">
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-username">Username</label>
                                    <div class="controls">
                                        <input type="text" id="modal-account-username" name="modal-account-username" value="admin" class="disabled" disabled>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-email">Email</label>
                                    <div class="controls">
                                        <input type="text" id="modal-account-email" name="modal-account-email" value="admin@exampleapp.com">
                                    </div>
                                </div>
                                <h4 class="sub-header">Change Password</h4>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-pass">Current Password</label>
                                    <div class="controls">
                                        <input type="password" id="modal-account-pass" name="modal-account-pass">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-newpass">New Password</label>
                                    <div class="controls">
                                        <input type="password" id="modal-account-newpass" name="modal-account-newpass">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-account-newrepass">Retype New Password</label>
                                    <div class="controls">
                                        <input type="password" id="modal-account-newrepass" name="modal-account-newrepass">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- END Account Tab Content -->

                        <!-- Profile Tab Content -->
                        <div class="tab-pane" id="modal-user-account-profile">
                            <form action="index.html" method="post" class="form-horizontal" onsubmit="return false;">
                                <div class="control-group">
                                    <label class="control-label" for="modal-profile-name">Name</label>
                                    <div class="controls">
                                        <input type="text" id="modal-profile-name" name="modal-profile-name" value="John Doe">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-profile-gender">Gender</label>
                                    <div class="controls">
                                        <select id="modal-profile-gender" name="modal-profile-name">
                                            <option value="m">Male</option>
                                            <option value="f">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-profile-birthdate">Birthdate</label>
                                    <div class="controls">
                                        <div class="input-append">
                                            <input type="text" id="modal-profile-birthdate" name="modal-profile-birthdate" class="input-small input-datepicker">
                                            <span class="add-on"><i class="icon-calendar"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-profile-skills">Skills</label>
                                    <div class="controls">
                                        <select id="modal-profile-skills" name="modal-profile-skills" class="select-chosen" multiple>
                                            <option value="html" selected>html</option>
                                            <option value="css" selected>css</option>
                                            <option value="javascript">javascript</option>
                                            <option value="php">php</option>
                                            <option value="mysql">mysql</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="modal-profile-bio">Bio</label>
                                    <div class="controls">
                                        <textarea id="modal-profile-bio" name="modal-profile-bio" class="textarea-elastic" rows="3">Bio Information..</textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- END Profile Tab Content -->
                    </div>
                </div>
                <!-- END Modal Tabs -->
            </div>
            <!-- END Modal Body -->

            <!-- Modal footer -->
            <div class="modal-footer">
                <button class="btn btn-success" data-dismiss="modal"><i class="icon-save"></i> Save</button>
            </div>
            <!-- END Modal footer -->
        </div>
        <!-- END User Modal Settings -->

        <!-- Excanvas for Flot (Charts plugin) support on IE8 -->
        <!--[if lte IE 8]><script src="js/helpers/excanvas.min.js"></script><![endif]-->

        <!-- Get Jquery library from Google ... -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <!-- ... but if something goes wrong get Jquery from local file -->
        <script>!window.jQuery && document.write(unescape('%3Cscript src="js/vendor/jquery-1.9.1.min.js"%3E%3C/script%3E'));</script>

        <!-- Bootstrap.js -->
        <script src="js/vendor/bootstrap.min.js"></script>

        <!--
        Include Google Maps API for global use.
        If you don't want to use  Google Maps API globally, just remove this line and the gmaps.js plugin from js/plugins.js (you can put it in a seperate file)
        Then iclude them both in the pages you would like to use the google maps functionality
        -->
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>

        <!-- Jquery plugins and custom javascript code -->
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <!-- Javascript code only for this page -->
        <script>
            $(function() {
                var dashChart = $('#dashboard-chart');
                var dashMap = $('#dashboard-map');
                var componentHeight = '300px';

                // Initialize Slimscroll
                $('.scrollable').slimScroll({
                    height: componentHeight,
                    color: '#333',
                    size: '10px',
                    alwaysVisible: true,
                    railVisible: true,
                    railColor: '#333',
                    railOpacity: 0.1
                });

                // Initialize Timeline Slimscroll
                $('.timeline-scrollable').slimScroll({
                    height: '500px',
                    color: '#333',
                    size: '10px',
                    alwaysVisible: true,
                    railVisible: true,
                    railColor: '#333',
                    railOpacity: 0.1
                });

                /* Dashboard Timeline - Adding content demostration */
                var timelineSpeed = 300;

                setTimeout(function() {
                    $('<li>' +
                        '<i class="timeline-meta-cat glyphicon-circle_plus themed-background-ocean"></i>' +
                        '<span class="timeline-meta-time">just now</span>' +
                        '<span class="timeline-title">Twitter</span>' +
                        '<span class="timeline-text">+1 Follower</span>' +
                        '</li>').prependTo('.timeline').hide().slideDown(timelineSpeed);
                }, 2000);

                setTimeout(function() {
                    $('<li class="clearfix">' +
                        '<i class="timeline-meta-cat icon-comments themed-background-leaf"></i>' +
                        '<span class="timeline-meta-time">just now</span>' +
                        '<img src="img/template/avatar2.jpg" alt="Avatar" class="timeline-avatar">' +
                        '<span class="timeline-title"><a href="page_ready_user_profile.html">Estelle</a> just commented on an <a href="page_ready_product.html">Product</a></span>' +
                        '<span class="timeline-text">Yes, I like this product too!</span>' +
                        '</li>').prependTo('.timeline').hide().slideDown(timelineSpeed);
                }, 6000);

                setTimeout(function() {
                    $('<li class="clearfix">' +
                        '<i class="timeline-meta-cat glyphicon-picture themed-background-wood"></i>' +
                        '<span class="timeline-meta-time">just now</span>' +
                        '<img src="img/template/avatar.jpg" alt="Avatar" class="timeline-avatar">' +
                        '<span class="timeline-title"><a href="page_ready_user_profile.html">John Doe</a> just added 2 new photos</span>' +
                        '<a href="img/placeholders/image_720x450_light.png" data-toggle="lightbox-image"><img src="img/placeholders/image_160x120_light.png" alt="image"></a> ' +
                        '<a href="img/placeholders/image_720x450_light.png" data-toggle="lightbox-image"><img src="img/placeholders/image_160x120_light.png" alt="image"></a>' +
                        '</li>').prependTo('.timeline').hide().slideDown(timelineSpeed);

                    // Re Initialize Image Popup for new image content
                    $('[data-toggle="lightbox-image"]').magnificPopup({type: 'image'});
                }, 10000);

                setTimeout(function() {
                    $('<li>' +
                        '<i class="timeline-meta-cat glyphicon-circle_plus themed-background-default"></i>' +
                        '<span class="timeline-meta-time">just now</span>' +
                        '<span class="timeline-title">Facebook page</span>' +
                        '<span class="timeline-text">+1 Like</span>' +
                        '</li>').prependTo('.timeline').hide().slideDown(timelineSpeed);
                }, 14000);

                setTimeout(function() {
                    $('<li class="clearfix">' +
                        '<i class="timeline-meta-cat glyphicon-brush themed-background-dawn"></i>' +
                        '<span class="timeline-meta-time">just now</span>' +
                        '<img src="img/template/pixelcave.png" alt="pixelcave" class="timeline-avatar">' +
                        '<span class="timeline-title">Thank you!</span>' +
                        '<span class="timeline-text">This was just a demonstration of how loading updates could happen! You can use all the available color themes as well as any icon for your category!</span>' +
                        '</li>').prependTo('.timeline').hide().slideDown(timelineSpeed);

                    // Remove loading spinner
                    $('#dash-timeline-icon').removeClass('icon-spin').removeClass('icon-spinner').addClass('icon-ok');
                }, 16000);

                /* Dashboard Chart */
                var dashData1 = [[0, 620], [1, 500], [2, 900], [3, 650], [4, 1250], [5, 850], [6, 1700]];
                var dashData2 = [[0, 110], [1, 80], [2, 320], [3, 250], [4, 550], [5, 520], [6, 600]];

                dashChart.css('height', componentHeight);

                // Initialize Classic Chart
                $.plot(dashChart, [
                    {data: dashData1, lines: {show: true, fill: true, fillColor: {colors: [{opacity: 0.25}, {opacity: 0.25}]}}, points: {show: true}, label: 'New Users'},
                    {data: dashData2, lines: {show: true, fill: true, fillColor: {colors: [{opacity: 0.1}, {opacity: 0.1}]}}, points: {show: true}, label: 'New Projects'}],
                {
                    legend: {
                        position: 'nw',
                        backgroundColor: null
                    },
                    colors: ['#a8db39', '#333'],
                    grid: {
                        borderWidth: 0,
                        color: '#999999',
                        labelMargin: 10,
                        hoverable: true,
                        clickable: true
                    },
                    yaxis: {
                        ticks: 0,
                        tickColor: '#fff'
                    },
                    xaxis: {
                        tickSize: 1,
                        tickColor: '#fff',
                        ticks: [[0, 'MON'], [1, 'TUE'], [2, 'WED'], [3, 'THU'], [4, 'FRI'], [5, 'SAT'], [6, 'SUN']]
                    }
                }
                );

                // Creating and attaching a tooltip
                var previousPoint = null;
                dashChart.bind("plothover", function(event, pos, item) {

                    $("#x").text(pos.x.toFixed(2));
                    $("#y").text(pos.y.toFixed(2));

                    if (item) {
                        if (previousPoint !== item.dataIndex) {
                            previousPoint = item.dataIndex;

                            $("#tooltip").remove();
                            var x = item.datapoint[0],
                                y = item.datapoint[1];

                            $('<div id="tooltip" class="chart-tooltip"><strong>' + y + '</strong></div>')
                                .css({top: item.pageY - 30, left: item.pageX - 20})
                                .appendTo("body")
                                .show();
                        }
                    }
                    else {
                        $("#tooltip").remove();
                        previousPoint = null;
                    }
                });

                // Initialize general map when tab is shown
                $('a[href="#dashboard-maps"]').on('shown', function() {
                    dashMap.css('height', componentHeight).css('width', '100%');

                    new GMaps({
                        div: '#dashboard-map',
                        lat: 0,
                        lng: 0,
                        zoom: 1
                    });
                });
            });
        </script>
    </body>
</html>