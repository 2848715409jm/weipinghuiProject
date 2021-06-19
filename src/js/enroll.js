//获取到button按钮
var btn = document.querySelector('.submit');
var span = document.querySelectorAll('.enroll2>span')
//console.log(span);
//console.log(btn);
//事件监听（事件，函数）
btn.addEventListener('click',click)
function click(){
    //验证表单用户名
    var username = document.querySelector("[name='username']").value;
    //console.log(username);
    if(username === ''){
        layer.tips('用户名必填', '#username', {
            tips: [1, 'red'],
            time: 4000
          }); 
          //layer.msg('一段提示信息');
        return false;
    }
    //验证用户名的正确性
    var reg = /^[a-zA-Z][a-zA-Z0-9]{2,7}$/;
    if(!reg.test(username)){
        span[0].style.display = 'block';
        return false;
    }
    /* var reg = /^[a-zA-Z][a-zA-Z0-9]{2,7}$/;
    if(reg.test(username)){
        span[0].style.display = 'none   ';
        return false;
    } */
    //验证密码
    var password =document.querySelector("[name='password']").value;
    if(password === ''){
        layer.tips('密码必填', '#password', {
            tips: [1, 'red'],
            time: 4000
        }); 
        return false;
    } 
    //密码由6-16位数字、字母组成
    var reg = /^[a-zA-Z0-9]{6,16}$/;  
    if(!reg.test(password)){
        span[1].style.display = 'block';
        return false;
    }
    //确认密码
    var password1 = document.querySelector("[name='password1']").value;
    if(password1 !== password){
        span[2].style.display = 'block';
        return false;
    } else{
        span[2].style.display = 'none'
    }
    //接受条款
    var checkbox = document.querySelector("[name='chk']");
    if(!checkbox.checked){
        layer.tips('请同意条款', '#chk', {
            tips: [1, 'red'],
            time: 4000
        });
        return false; 
    }
    //当点击立即注册时，页面出现白色透明度和加载图标
    var index = layer.load(1, {
        shade: [0.5,'#666'] //0.1透明度的白色背景
    });
    btn.disabled = true;//
    pAjax({
        url:'../php/enroll.php',
        data:{
            username,
            password,
        },
        type:"post",//传参方式
    }).then(res=>{
        //注册成功，关闭白色透明背景
        layer.close(index)
        //解构赋值
        var {meta:{status,msg}} = res;//
        var msgIndex = layer.msg(msg);
        if(status===0){
            setTimeout(()=>{
                layer.close(msgIndex)
                //注册成功跳转到登录页面
                location.href = './login.html'
            },2000)
        }else{
            btn.disabled = false;
            return false;
        }
    })
}