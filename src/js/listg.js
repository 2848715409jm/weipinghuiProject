$(function() {
    /* var loadindex = layer.load(1, {
        shade: [0.5, '#333']
    }) */
    $.ajax({
        url: '../php/list.php',
        dataType: 'json',
        success(res) {
            var {
                data
            } = res;
            console.log(data);
          //   data.reverse()
            var pageSize = 10;
            new Page("page", {
                language: {
                    first: '首页',
                    prev: '上一页',
                    next: '下一页',
                    last: '尾页'
                },
                pageData: {
                    pageSize,
                    total: data.length
                },
                show: function(currentPage) {
                    var tmp = data.slice((currentPage - 1) * pageSize, currentPage * pageSize)
                    var html = '';
                    tmp.forEach(v => {
                        html += `
                        <div class="c-goods-item">
                        <a href="./detial.html?id=${v.id}">
                            <div class="c-goods-item-top">
                                <div class="c-goods-item-img">
                                    <img src="${v.imgpath}" alt="">
                                </div>
                            </div>
                            <div class="c-goods-item-bottom">
                                <div class="c-goods-item-price">
                                    <div class="c-goods-item-main-price">
                                        <div class="c-goods-item-babel">
                                            <span class="c-goods-item-price-label-text">特卖价</span>
                                        </div>
                                        <div class="c-goods-item-sale-price J-goods-item__sale-price">
                                            <span>¥</span>${v.price}
                                        </div>
                                    </div>
                                </div>
                                <div class="c-goods-item-name  c-goods-item-name--two-line">
                                ${v.name}
                                </div>
                            </div>
                        </a>
                    </div>
                        `
                    })
                    $('.c-goods-inner').html(html)
                }
            })
            //layer.close(loadindex)
        }
    })
  })