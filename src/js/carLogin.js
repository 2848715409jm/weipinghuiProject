//判断用户是否登录，用户登录后改变导航栏样式
/* $(function(){})  它就是代表$()和function（）{}两个函数的结合体
这个的意思就是防止文档在还没有完全加载好就运行jquery */
$(function(){
    //获取Cookie的名字
    var username = getCookie('username');
    //获取元素
    var login = document.querySelector('.login');
    //判断，登录之后获取到用户名改变导航栏样式
    if(username){
        //字符串的拼接
        var str = 
        ` <div class="inline-block-item member-actions login_before" id="J_head_log">
        <a href="./login.html" id="J_header_lnkLogin" class="member-actions-link J_fake_a">欢迎<span>&nbsp;${username}</span>！</a>
        <a href="./enroll.html" class="member-actions-link J_fake_a loginOut">退出</a>
    </div> `;
        //把获取到的内容添加到页面上
        console.log(login);
        login.innerHTML = str;
        //退出功能
        //获取元素
        var out = document.querySelector('.loginOut');
        //点击退出按钮弹框提示是否确定退出
        out.onclick = function(){
            layer.confirm('你确定要退出吗？',
            {
                btn:['确定','取消']
            },
            //确定退出，根据Cookie名来删除Cookie
            function(){
                //删除Cookie
                delCookie('username');
                login.innerHTML = `<span><a class="wp-u" href="./login.html">请登录</a></span>
                <span><a href="./enroll.html">注册</a></span>`;
                layer.msg('成功退出',{icon:1,time:500})
            },
            //点击取消
            function(){
                layer.msg('已取消',{icon:1,time:500})
                return false;
            }
            )
        }
    }
})