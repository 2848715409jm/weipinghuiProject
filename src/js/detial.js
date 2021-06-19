//获取到id的值
var urlParams = location.search.match(/id=(\d+)/);
//判断是否获取到该商品的id,没有获取到提示非法访问，然后跳转回list页面
if(!urlParams){
    var paramindex = layer.msg('非法访问！',{
        icon:2,
    })
    setTimeout(()=>{
        layer.close(paramindex)
        location.href = './list.html';
        return false;
    },800)
}
// 拿到商品id
var id = urlParams[1];
var loadindex = layer.load(1,{
    shade: [0.5,'#333']
})
async function getnum(){
    //从数据库中查询数据详情
    var res = await $.ajax({
        url:'../php/detial.php',
        data:{id},
        dataType:'json',
    })
    //把从数据库中拿到的数据赋值给data
    console.log(res)
    var {data} =res;
    //把页面中的原数据替换成从数据库中获取的动态数据
    $('.pib-title-class').text(data.brand);
    $('.pib-title-detail').text(data.name);
    $('.sp-price').text(data.price);
    // 将商品的库存数量,通过属性添加到 标签中
    $('.addCart .number').attr('data-stock',data.stock)
    console.log(data.imgpath);
    var imgs = data.imgpath.split('==========')
    for(var i=0;i<imgs.length;i++){
        $('.enlarge .small ul').append($(`<li><img src="${imgs[i]}"></li>`))
    }
    $('.enlarge .middle>img').attr('src',imgs[0])
        $('.enlarge .middle .big>img').attr('src',imgs[0])
        enlarge()
        layer.close(loadindex)
}
getnum();
//对数量加减进行判断
$('.add').click(function(){
    //拿到number的值并对number进行累加操作
    var num = $(this).prev().val()-0;
    $(this).next().prop('disabled',false)
    num++;
    //
    if(num>=$(this).parent().attr('data-stock')){
        // console.log($(this).parent().attr('data-stock'))
        //获取到商品库存，当num=最大商品库存时，增加按钮不可点击
        num=$(this).parent().attr('data-stock')
        $(this).prop('disabled',true)
    }
    $(this).prev().val(num)
})
$('.reduce').click(function(){
    //拿到number的值并对number进行减法操作
    var num = $(this).prev().prev().val()-0;
    $(this).prev().prop('disabled',false)
    num--;
    if(num<=1){
        //当num=1时，减少按钮将不可再点击
        num=1
        $(this).prop('disabled',true)
    }
    $(this).prev().prev().val(num)
})
// 加入购物车
$('.addCart .addBtn').click(function(){
    // 判断是否登录
    var username = getCookie('username')
    if(!username){
        var tipindex = layer.msg('请先登录！')
        setTimeout(function(){
            layer.close(tipindex)
            localStorage.setItem('url',location.href)
            location.href = './login.html';
        },2000)
        return false;
    }
    // 判断本地存储中是否有数据
    var data = localStorage.getItem('data');
    if(data){
        data = JSON.parse(data);
        // 判断数据中是否有当前这条数据
        var obj = data.filter(v=>v.username===username && v.goodsid===id)
        if(obj.length){
            // 如果本地存储中有当前这个商品的数据，就让数量增加
            obj[0].number = obj[0].number + ($('.add').prev().val()-0)
        }else{
            // 如果没有当前这个商品的数据，就把当前这个商品的数据添加进去
            data.push({
                username,
                goodsid:id,
                number:$('.add').prev().val()-0
            })
        }
        localStorage.setItem('data',JSON.stringify(data))
    }else{
        // 没有数据，就将当前这一条数据存储起来
        localStorage.setItem('data',JSON.stringify([
            {
                username,
                goodsid:id,
                number:$('.add').prev().val()-0
            }
        ]));
    }
    layer.msg('加入购物车成功',{
        icon:1,
        time:1000
    })
})