//商品分类下拉
$('.main-nav').find('li').hover(function () {
    $(this).find('ul').slideDown(300 , 'linear' , function (){ 
    });
}, function () {
    $(this).find('ul').slideUp(300 , 'linear' , function (){ 
    });
})