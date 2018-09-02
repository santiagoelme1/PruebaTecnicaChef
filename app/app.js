// Objeto Angular -- importando el dirPagination.
var app = angular.module('ChefApp_Santiago',['angularUtils.directives.dirPagination']);
// Controlador para dar likes
app.controller('likesCtrl', function($scope, $http) {
  // Peticion Ajax usando el servicio $http
  $http.post('php/getPosts.php').success(function(data){
    $scope.posts = data;
  });

  // Set $scopes
  $scope.upLike = function(post){
    var voted = true;
    post.voted = voted;
    post.likes++;
    updateLike(post.id,post.likes);
    var curCard = ".post_"+post.id;
    $(curCard).addClass("voted_message_open");
    setTimeout(function(){
      $(curCard).removeClass("voted_message_open");
    }, 2000);
  };

  // Abrir ventana modal con la opción de deshacer el voto.
  $scope.alreadyLike = function(post, index){
    var curCard = ".post_mo_"+post.id;
    $(curCard).find('.sideModalTR').modal('show');
  };

  // Disminuir un voto
  $scope.deshacerVoto = function(post){
    post.likes--;
    updateLike(post.id,post.likes);
    $('.sideModalTR').modal('hide');
    post.voted = false;
  };

  // Actualizando Likes
  function updateLike(id,likes){
    $http.post('php/updateLike.php?id='+id+'&likes='+likes);
    console.log("voto actualizado"+ likes);
  }

});

// Controlador para obtener Ranking
app.controller('rankingCtrl', function($scope, $http) {
  $http.post('php/getRanking.php').success(function(data){
    $scope.posts = data;
  });
});


// Funciones jQuery
(function( $ ) {
    $( function() { // Ready

      // Abrir seccion Ranking
      $("#gotoRanking").click(function(){
        $("body").addClass("scrollBlocked");
        $("#ranking_content").addClass("OpenModalRanking");

            setTimeout(function(){
              $('.containerSlider').addClass("containerSlider_loaded");
               $('.SliderRanking').slick({
                 infinite: false,
                 dots: false,
                 slidesToShow: 3,
                 slidesToScroll: 2,
                 responsive: [
                   {
                     breakpoint: 992,
                     settings: { slidesToShow: 2, slidesToScroll: 1 }
                   },
                   {
                     breakpoint: 757,
                     settings: { slidesToShow: 1, slidesToScroll: 1 }
                   }
                 ]
               });
          }, 500);
      });

      // Volver al Home
      $("#RegresarHome").click(function(){
        $("body").removeClass("scrollBlocked");
        $("#ranking_content").removeClass("OpenModalRanking");
        $('.SliderRanking').slick("unslick");
        $(".nav-menu").removeClass("nav-menu-opened");
        $(".containerSlider").removeClass("containerSlider_loaded");
      });
      
      // Menu Responsive
      $(".open-menu").click(function(){
        $(".nav-menu").addClass("nav-menu-opened");
      });
      $(".CloseNavMenu").click(function(){
        $(".nav-menu").removeClass("nav-menu-opened");
      });

      // UX - Subir Scroll cuando se cambia de página en el paginador.
      $('body').on('click', '.pagination li', function () {
         $('html,body').animate({ scrollTop: 0 }, 'linear');
      });

    });
})($);


$(window).scroll(function(){
  var sticky = $('.sticky'),
      scroll = $(window).scrollTop();

  if (scroll >= 100) sticky.addClass('fixed');
  else sticky.removeClass('fixed');
});


$(window).on('load', function(){
  $(".preload").addClass("preloaded");
});

