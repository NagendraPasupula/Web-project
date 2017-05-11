$(function() {
    $("#searchSection").load("templates/searchfield.html");
    $("#page").load("templates/homepage.html");
    $("#footerId").load("templates/footer.html");

    $con = $("<div></div>");
    $con.load("templates/contact.html");

    $("#homeLink").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").load("templates/homepage.html");
        removeOverlay();
    });
    $("#buyLink").click(function() {

    });
    $("#sellLink").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").load("templates/sellproductslist.html");
        removeOverlay();
    });
     $("#mydd").click(function() {
        //$('body').scrollTop(0);
        loadingOverlay();
        $("#myadminpage").load("templates/sellproductslist.html");
        removeOverlay();
    });
    $("#aboutLink").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").load("templates/about.html");
        removeOverlay();
    });
     $("#adminLin").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").load("admin.html");
        removeOverlay();
    });
    
     $("#btnSingInadmin").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").load("admin.html");
        removeOverlay();
    });
    $("#contactLink").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").load("templates/contact.html");
        removeOverlay();
    });
    $("#categoriesLink").click(function() {
        $('body').scrollTop(0);
        loadingOverlay();
        $("#page").html($con);
        removeOverlay();
    });

    $('#navbar ul li a.page-scroll').bind('click', function(event) {
        event.preventDefault();
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo', function() {
        });
        $("#navbar ul li").removeClass("active");
        $anchor.parent("li").addClass("active");
    });

    $("#iBidNavbar ul li a").click(function() {
        $("#iBidNavbar li").removeClass("active");
        $(this).parent("li").addClass("active");
    })


    loadingOverlay = function() {
//        $("body").addClass("overlay_body");
        // add the overlay with loading image to the page
        var over = '<div id="overlay">' +
                '<img id="loading" src="http://devchat.tv/images/wait.gif" >' +
                '</div>';
        $(over).appendTo('body');

        // click on the overlay to remove it
        $('#overlay').click(function() {
            removeOverlay();
        });
        // hit escape to close the overlay
        $(document).keyup(function(e) {
            if (e.which === 27) {
                removeOverlay();
            }
        });
    };
    loadingOverlay();
    removeOverlay = function() {
        setTimeout(function() {
//            $("body").removeClass("overlay_body");
            $('#overlay').remove();
        }, 1500);
    }
    logout = function() {
        loadingOverlay();
        $.removeCookie("username");
        $.removeCookie("email");
        $.removeCookie("firstname");
        $.removeCookie("lastname");
        $.removeCookie("admin");
        setTimeout(function() {
            window.location.href = window.location.origin + window.location.pathname;
        }, 500);
        removeOverlay();
    }
    if ($.cookie('username')) {
        $("#loginAccount").hide();
        $("#userAccount").show();
        $("#wluser").text($.cookie('firstname') + " " + $.cookie('lastname'));
        if ($.cookie('admin') === "1") {
            $(".adminClass").show();
        } else {
            $(".adminClass").hide();
        }
    } else {
        $("#loginAccount").show();
        $("#userAccount").hide();
    }
    removeOverlay();


    function loadProductListInHolder(para) {
        $("#page").load("templates/searchresult.html", function() {
            $.each(para.items, function(index, item) {
                $row = $("<div class='row' style='margin-top:20px;'></div>");
                $image = $("<div class='col-xs-2'></div>");
                $image.append("<img class='logo' src='" + item.img + "' alt=''/>")
                $row.append($image);
                $details = $("<div class='details col-xs-6'></div>");
                $details.append("<h4 class='list-group-item-heading' ><a href='javascript:void(0)'>" + item.title + "</a></h4>");
                $details.append("<p class='list-group-item-text'>" + item.caption + "</p>");
                $details.append("<p class='list-group-item-text'></p>");
                $details.append("<p class='list-group-item-text'>" + item.soldsofar + "</p>");
                $details.append("<p class='list-group-item-text'>by</p>");
                $details.append("<p class='list-group-item-text'>" + item.seller + "</p>");
                $row.append($details);
                $right = $("<div class='col-md-3 text-center'></div>");
                $right.append("<h3> $ <span class='currentBidHldr'>" + item.currentBid + "</span> </h3>");

                $right.append("<button class='btn btn-primary btn-lg'><span class='glyphicon glyphicon-hand-right'></span> Bid now</button>");
                $stars = $("<div class='stars'></div>");
                $stars.append("<span class='glyphicon glyphicon-star'></span>");
                $stars.append("<span class='glyphicon glyphicon-star'></span>");
                $stars.append("<span class='glyphicon glyphicon-star'></span>");
                $stars.append("<span class='glyphicon glyphicon-star'></span>");
                $stars.append("<span class='glyphicon glyphicon-star-empty'></span>");

                $right.append($stars);
                $right.append("<p> Average 4.5 <small> / </small> 5 </p>");

                $row.append($right);

                $("#searchresholder").append($row);
                $("#searchresholder").append($("<hr>"));
            });
        });
    }

    $("#categoriesNav li a").click(function(e) {
        e.preventDefault();
        var val = $(this).attr("href");
        load1(val);
    });
    function load1(val) {
        if (val === "#all") {
            loadProductListInHolder(data.categories[0]);
        } else if (val === "#antiques") {
            loadProductListInHolder(data.categories[1]);
        } else if (val === "#books") {
            loadProductListInHolder(data.categories[2]);
        } else if (val === "#housengarden") {
            loadProductListInHolder(data.categories[3]);
        } else if (val === "#electronics") {
            loadProductListInHolder(data.categories[4]);
        } else if (val === "#healthnbeauty") {
            loadProductListInHolder(data.categories[5]);
        } else if (val === "#jewelrynwatches") {
            loadProductListInHolder(data.categories[6]);
        } else if (val === "#musicalinstruments") {
            loadProductListInHolder(data.categories[7]);
        } else if (val === "#sportinggoods") {
            loadProductListInHolder(data.categories[8]);
        } else if (val === "#toysnhobbies") {
            loadProductListInHolder(data.categories[9]);
        } else if (val === "#everythingelse") {
            loadProductListInHolder(data.categories[10]);
        }

    }
    $(document).on("click", "#lefnavholder li", function(e) {
        e.preventDefault();
        var val = $(this).find("a").attr("href");
        load1(val);
    });

    $(document).on("click", "#lefnavholder1 li", function(e) {
        e.preventDefault();
        $(this).addClass('activeLi');
        $(this).siblings().removeClass('activeLi');
        var val = $(this).find("a").attr("href");
        load1(val);
    });

    $(document).on("click", "#searchresholder button, #searchresholder a", function(e) {
        e.preventDefault();
        loadingOverlay();
        $("#page").load("templates/buyproduct.html");
        removeOverlay();
    });

    $(document).on("click", ".homeGrid a", function(e) {
        loadProductListInHolder(data.categories[0]);
    });

    $("#manageUsers").click(function(e) {
        e.preventDefault();
        loadingOverlay();
        $("#page").load("templates/fraudulent.html");
        removeOverlay();
    });


    $("#manageCat").click(function(e) {
        console.log(e);
        e.preventDefault();
        loadingOverlay();
        $("#page").load("templates/categories.html");
        removeOverlay();
    });
    //adding
      $("#addanItem").click(function(e) {
        e.preventDefault();
        loadingOverlay();
        $("#searchresholder").load("templates/index.html");
        removeOverlay();
    });

    $("#logout").click(function() {
        logout();
    });

});


$(document).ready(function() {
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    panels.hide();

    //Click dropdown
    panelsButton.click(function() {
        //get data-for attribute
        var dataFor = $(this).attr('data-for');
        var idFor = $(dataFor);

        //current button
        var currentButton = $(this);
        idFor.slideToggle(400, function() {
            //Completed slidetoggle
            if (idFor.is(':visible'))
            {
                currentButton.html('<i class="icon-chevron-up text-muted"></i>');
            }
            else
            {
                currentButton.html('<i class="icon-chevron-down text-muted"></i>');
            }
        })
    });


    $('[data-toggle="tooltip"]').tooltip();

    $('button').click(function(e) {
        e.preventDefault();
        alert("This is a demo.\n :-)");
    });
});