//商品分类下拉
/* $('.main-nav').find('li').hover(function () {
    console.log($('.main-nav'));
    $(this).find('ul').slideDown(300 , 'linear' , function (){ 
    });
}, function () {
    $(this).find('ul').slideUp(300 , 'linear' , function (){ 
    });
}) */
/* $(function(){
    var loadindex = layer.load(1, {
        shade: [0.5, '#333']
    })
    $.ajax({
        url:'../php/list.php',
        dataType:'json',
        success(res){

        }
    })
}) */
// 加载层
//var loadIndex = layer.load(1,{shade:[0.5,'#fff']})
// 定义一个async异步函数
var lyq = document.querySelector('.c-goods-inner');
console.log(lyq);
async function getList(){
    var lyqres = await pAjax({
        url:'../php/list.php',
        data:{pid:2}
    })
    console.log(lyqres)
    var {message,data} = lyqres;
    var str= '';
    /* 
    for(var i=0;i<data.length;i++){
        console.log(data[i].imgpath);
        var imgs = data[i].imgpath.split('==========')
        console.log()
    } */
    
    console.log(data);
    for(var i = 0; i<data.length; i++){
        str +=`
        <div class="c-goods-item">
        <a href="./detial.html?id=${data[i].id}">
            <div class="c-goods-item-top">
                <div class="c-goods-item-img">
                    <img src="${data[i].imgpath}" alt="">
                </div>
            </div>
            <div class="c-goods-item-bottom">
                <div class="c-goods-item-price">
                    <div class="c-goods-item-main-price">
                        <div class="c-goods-item-babel">
                            <span class="c-goods-item-price-label-text">特卖价</span>
                        </div>
                        <div class="c-goods-item-sale-price J-goods-item__sale-price">
                            <span>¥</span>${data[i].price}
                        </div>
                    </div>
                </div>
                <div class="c-goods-item-name  c-goods-item-name--two-line">
                ${data[i].name}
                </div>
            </div>
        </a>
    </div>`
    }
    lyq.innerHTML = str;
    //layer.close(loadIndex)
}
getList();
