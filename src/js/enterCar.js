//判断是否登录,若没有登录，显示登录

    //判断是否登录
    var username = getCookie('username');
    var tips =document.querySelector('.enterCar')
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
    </div>`;
    tips.innerHTML = str;

    }
