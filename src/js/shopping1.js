$(function(){
    // 请求购物车数据
  var data = localStorage.getItem('data');
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
      if(!arr.length){
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
          return false;
      }
      // 从本地存储中获取到所有当前用户的数据
      var brr = arr.map(v=>{
          if(v.username === username){
              return v.goodsid
          }
      });
      // 将所有数据的商品id拼接在一起
      var ids = brr.join(',')
      console.log(ids);
      /* var loadindex = layer.load(0, {shade: true}); */
      $.ajax({
          url:'../php/shoppingCar.php',
          data:{ids},
          dataType:"json",
          success(res){
              var {data} = res;
              var str = '';
              for(var i=0;i<data.length;i++){
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
              /* layer.close(loadindex) */
              // 全选单选事件
              //select();
              // 数量加减
              //addAndReduce()
              // 移除
              //remove()
              // 计算总数和总价
              //total()
          }
      })
  }
})