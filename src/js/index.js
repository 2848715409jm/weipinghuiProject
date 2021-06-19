/* $('.main-nav>.head-inner>ul>li:nth-of-type(1)>ul>li').hover(function(){
    $(this).find('.main-nav>.head-inner>ul>li:nth-of-type(1)>ul').stop().slideToggle().end().siblings().find('.main-nav>.head-inner>ul>li:nth-of-type(1)>ul').slideUp()
}) */

//商品分类下拉
/* $('.main-nav').find('li').hover(function () {
    $(this).find('ul').slideDown(300 , 'linear' , function (){ 
    });
}, function () {
    $(this).find('ul').slideUp(300 , 'linear' , function (){ 
    });
}) */

//获取元素
var wrapperA = document.querySelector('.wrapper-a>.wrapper-a-list>.wrapper-a-item')
//点击跳转到商品列表页
wrapperA.onclick = function(){
    window.location.href = "./list.html";
}