$(function(){
      //判断是否登录
       var username = getCookie('username');
      //var tips =document.querySelector('.g-bd')
      if(!username){
          var str =`<div class="g-row">
          <div class="m-common-error-tips">
              <div class="m-tips">
                  <span class="vipFont tips-icon if-sigh tips-icon-large iconfont">&#xe60d;</span>
                  <div class="tips-cnt">
                      <p class="tips-text">登录超时，请重新登录。</p>
                  </div>
              </div>
              <div class="common-error-actions">
                  <a class="ui-btn-primary ui-btn-medium" href="./login.html">登录</a>
              </div>
          </div>
  
          <div class="c-tabs  c-tabs-brands" id="J_recommend_box">
              <div class="c-tabs-content">
                  <div class="c-tabs-panel list-recommend is-tabs-panel-active hidden"></div>
              </div>
          </div>
      </div>`
      //tips.innerHTML = str;
      $('.enterCar').html(str)
      }else{
    // 请求购物车数据
  var data = localStorage.getItem('data');
  //  判断购物车中是否有数据
    if(!data || JSON.parse(data).length==0){
        var str = `
        <div class="g-row">
        <div class="m-cart-tips cart-empty-tips">
            <span class="u-icon icon-cart-tips icon-cart-empty"></span>
            <div class="cart-tips-cnt">
                <div class="cart-tips-text">
                    <p class="c-empty-title">购物袋空空如也，</p>
                    <p class="c-empty-text">快去抢购心仪商品吧~</p>
                </div>
                <div class="cart-tips-actions">
                    <a class="ui-btn-primary  ui-btn-medium" href="./list.html">立即抢购 </a>
                    <a class="ui-btn-default  ui-btn-medium" href="#" role="button">查看订单</a>
                </div>
            </div>
        </div>
        <div class="c-tabs  c-tabs-brands" id="J_recommend_box">
            <div class="c-tabs-content">
                <div class="c-tabs-panel list-recommend is-tabs-panel-active hidden" id="J_recommend_bd"></div>
            </div>
        </div>
    </div> 
        `
        $('.g-bd').html(str)
    }else{
        var arr = JSON.parse(data);
        // 从本地存储中获取到所有当前用户的数据
        console.log(arr);
      //   brr中获取到了当前用户购物车中所有的商品id
        var brr = arr.map(function(value){
          if(value.username === username){
              return value.goodsid
          }
        });
      //   console.log(brr);[4,3]
      // brr是一个数组，我们需要将brr中数组中的id通过逗号拼接成字符串 4,3
        // 将所有数据的商品id拼接在一起
        var ids = brr.join(',')
        console.log(ids); // 4,3
        var loadindex = layer.load(0, {shade: true});
        $.ajax({
            url:'../php/shoppingCar.php',
            data:{ids},
            dataType:"json",
            success(res){
                var {data} = res;
                var str = '';
                for(var i=0;i<data.length;i++){
                   //   拿到对应商品的购物车中的需要购物的数量
                    var number = arr.find(v=>v.username===username && v.goodsid==data[i].id).number
                    str += `
                    <div class="g-row">
                    <div class="cart-tab">
                        <a href="#" class="cart-tab-item cart-tab-item-selected"><span>特卖商品</span></a>
                    </div>
                    
                    <div class="m-inline-block  channel-tips J_cart_header isNewCart">
                        
                        <span class="inline-block-item area-delivery-info J_area_delivery_info">配送至<em
                                class="area-delivery-province J_area_delivery_province">深圳市</em></span>
                        <div class="inline-block-item channel-tips-cnt m-shopping-tips newCart_countDown">
                            
                            <p class="shopping-tips-text  countdown-text">
                                勾选商品“ <img src="../static/img/shoppingCar/shoppingCar4.png"> ”即可锁定库存20分钟，倒计时内不用担心商品被抢走～
                            </p>
                        </div>
                    </div>
                    <div class="car-list">
                        <div class="wrap cart">
                            <div class="content">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            
                                            <th></th>
                                            <th>商品图片</th>
                                            <th>商品名称</th>
                                            <th>商品价格</th>
                                            <th>商品数量</th>
                                            <th>小计</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr valign="bottom">
                                            <td class="contain-centent"><input type="checkbox" name="selectOne"></td>
                                            <td><img src="${data[i].imgpath}"
                                                    width="50" height="50"></td>
                                            <td>${data[i].name}</td>
                                            <td class="price">￥<span>${data[i].price}</span></td>
                                            <td class="number" data-stock="${data[i].stock}" data-id="${data[i].id}">
                                                <button class="btn btn-default reduce">-</button>
                                                <input type="number" name="number" value="${number}">
                                                <button class="btn btn-default add">+</button>
                                            </td>
                                            <td class="subtotal">￥<span>${data[i].price * number}</span></td>
                                            <td><a class="btn btn-danger remove" href="#">删除</a></td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td class="contain-centent"><input type="checkbox" name="selectAll"></td>
                                            <td colspan="2">商品总数：<span class="totalNum">0</span></td>
                                            <td colspan="2">商品总价：<span class="totalPrice">0</span></td>
                                            <td><a class="btn btn-primary" href="list.html">回列表页</a></td>
                                            <td><a class="btn btn-warning" href="order.html">去结算</a></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                    `
                }
                $('.g-bd').html(str)
                layer.close(loadindex)
                // 全选单选事件
                select();
                // 数量加减
                addAndReduce()
                // 移除
                remove()
                // 计算总数和总价
                total()
            }
        })
    }
    // 全选单选
    function select(){
        $('[name="selectAll"]').click(function(){
            $('[name="selectOne"]').prop('checked',$(this).prop('checked'))
            $('[name="selectAll"]').prop('checked',$(this).prop('checked'))
            total()
        })
        $('[name="selectOne"]').click(function(){
            var selectArr = Array.prototype.slice.call($('[name="selectOne"]'))
            var selectStatus = selectArr.every(v=>v.checked)
            $('[name="selectAll"]').prop('checked',selectStatus)
            total()
        })
        
    } 
    // 数量加减
    function addAndReduce(){
        $('table .number .add').click(function(){
            var num = $(this).prev().val()-0;
            $('table .number .reduce').prop('disabled',false)
            num++;
            if(num>=$(this).parent().attr('data-stock')){
                num = $(this).parent().attr('data-stock')
                $(this).prop('disabled',true)
            }
            $(this).prev().val(num)
            // 修改购物车中的商品数量的----需要存储在本地
            var data = JSON.parse(localStorage.getItem('data'))
            var goodsid = $(this).parent().attr('data-id');
          //  此处obj就是通过商品id匹配到需要修改购物车商品数量的  商品对象
            var obj = data.find(v=>v.username === username && v.goodsid===goodsid)
            obj.number = num;
          //  将修改够的购物车存回本地
            localStorage.setItem('data',JSON.stringify(data))
            // 计算小计
            var price = $(this).parent().siblings(".price").find('span').text()-0
            var subtotal = price * num;
            $(this).parent().siblings('.subtotal').find('span').text(subtotal)
            total()
        })
        $('table .number .reduce').click(function(){
            var num = $(this).next().val()-0;
            $('table .number .add').prop('disabled',false)
            num--;
            if(num<=1){
                num = 1
                $(this).prop('disabled',true)
            }
            $(this).next().val(num)
            // 修改本地存储
            var data = JSON.parse(localStorage.getItem('data'))
            var goodsid = $(this).parent().attr('data-id');
            var arr = data.find(v=>v.username === username && v.goodsid===goodsid)
            arr.number = num;
            localStorage.setItem('data',JSON.stringify(data))
            // 计算小计
            var price = $(this).parent().siblings(".price").find('span').text()-0
            var subtotal = price * num;
            $(this).parent().siblings('.subtotal').find('span').text(subtotal)
            total()
        })
    } 
    // 移除
    function remove(){
        $('.remove').click(function(){
            var that = $(this)
            layer.confirm('你确定要删除吗？',
                {
                    btn: ['确定','取消'] //按钮
                }, 
                function(){
                    //   确定删除购物车中的某一个商品数据
                    var data = JSON.parse(localStorage.getItem('data'))
                    var goodsid = that.parent().siblings('.number').attr('data-id');
                    //   通过循环条件查找出data数组中符合条件的索引
                    var index = data.findIndex(v=>v.username === username && v.goodsid===goodsid)
                    //   删除本地购物车中的这条商品信息
                    data.splice(index,1)
                    //   移除页面中的当前这个条数据
                    that.parent().parent().remove()
                    total()
                    localStorage.setItem('data',JSON.stringify(data))
                    layer.msg("删除成功",{
                        icon:1,
                        time:500
                    })
                    data = JSON.parse(localStorage.getItem('data'))
                    if(!data.length){
                        var str = `
                        <div class="g-row">
                        <div class="m-cart-tips cart-empty-tips">
                            <span class="u-icon icon-cart-tips icon-cart-empty"></span>
                            <div class="cart-tips-cnt">
                                <div class="cart-tips-text">
                                    <p class="c-empty-title">购物袋空空如也，</p>
                                    <p class="c-empty-text">快去抢购心仪商品吧~</p>
                                </div>
                                <div class="cart-tips-actions">
                                    <a class="ui-btn-primary  ui-btn-medium" href="./list.html">立即抢购 </a>
                                    <a class="ui-btn-default  ui-btn-medium" href="#" role="button">查看订单</a>
                                </div>
                            </div>
                        </div>
                        <div class="c-tabs  c-tabs-brands" id="J_recommend_box">
                            <div class="c-tabs-content">
                                <div class="c-tabs-panel list-recommend is-tabs-panel-active hidden" id="J_recommend_bd"></div>
                            </div>
                        </div>
                    </div> 
                        `
                        $('.g-bd').html(str)
                    }
                },
                function(){
                    layer.msg("已取消",{
                        icon:1,
                        time:500
                    })
                    return false;
                }
            );
            
        })
    }
     // 计算总数和总价
    function total(){
        var totalNum = 0;
        var totalPrice = 0
        $('[name="selectOne"]:checked').each(function(i,v){
            totalNum += $(v).parent().siblings('.number').find('input[name="number"]').val()-0
            totalPrice += $(v).parent().siblings('.subtotal').find('span').text()-0
        })
        $('.totalNum').text(totalNum)
        $('.totalPrice').text(totalPrice)
    }
}
})