//页面打开或刷新的时候，文本框记住以前的用户名
var rememberusername = getCookie('rememberusername');
console.log('rememberusernam')//"rememberusername" 字符串
//获取元素  
var user = document.querySelector("[name='username']");
console.log(user);//<input type="text" name="username" id="username" placeholder="请输入账号">
//把记住的密码赋值给文本框
if(rememberusername){
    user.value = rememberusername;
}
//获取登录按钮
var btn = document.querySelector('.submit');
//console.log(btn)
btn.addEventListener('click',click)
function click(){
    //验证表单用户名
    var username = document.querySelector("[name='username']").value;
    //console.log(username);
    if(username === ''){
        layer.tips('用户名不能为空', '#username', {
            tips: [1, 'red'],
            time: 4000
          }); 
          //layer.msg('一段提示信息');
        return false;
    }
    //验证密码
    var password =document.querySelector("[name='password']").value;
    if(password === ''){
        layer.tips('密码不能为空', '#password', {
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
    $.ajax({
        url:'../php/login.php',
        data:{
            username,
            password,
        },
        dataType:'json',
        method:'post',
        success:res=>{
            // 解构赋值
            //console.log(res);
            var {meta:{status,msg}} = res;//{status:0,msg:"登录成功"}                
            layer.close(index)
            var msgindex = layer.msg(msg)
            /* if(msg !== "登录成功"){
                var msgindex = layer.msg(msg, {icon: 2});
            }else{
                var msgindex = layer.msg(msg, {icon: 1});
            } */
             
            if(status===0){
                // 设置cookie
                setCookie('username',$('[name="username"]').val())
                if($("[name='remember']").prop('checked')){
                    setCookie('rememberusername',$('[name="username"]').val(),7*24*3600)
                }
                // 应该跳转
                setTimeout(()=>{
                    layer.close(msgindex)
                    $('.submit').prop('disabled',false)
                        location.href = 'index.html';    
                },2000)
                
            }else{
                $('.submit').prop('disabled',false)
                return false;
            }
        }
    })
}





/* 
使用validate做表单验证
validate使用步骤:
 1.导入jquery.js
 2.导入validate.js
 3.在页面加载成功之后 对表单进行校验  $("选择器").validate()
 4.在validate中编写校验规则
 $("选择器").validate({
 rules:{},
 messages:{}
 });
这里rules的{} 里写的就是具体的规范，要做什么约束

messages的{}里写的就是违背给出的提示信息*/
/* console.log($('.loginF'));
$('.loginF').validate({
    rules:{
        username:'required',
        password:'required'
    },
    messages:{
        username:'用户名不能为空',
        password:'密码不能为空'
    },
    submitHandler:function(form){
        console.log(666);
        //加载中
        var loadindex = layer.load(1, {
            shade: [0.5,'#333'] //0.1透明度的白色背景
        });
        //向submit中添加属性：disabled,但他的值为true时，不可以点登录按钮
        $('.submit').porp('disabled',true)
        console.log($('.submit'));
        $.ajax({
            url:'../php/login.php',
            data:$(form).serialize(),//
            dataType:'json',
            method:'post',
            success:res=>{
                // 解构赋值
                console.log(res);
                var {meta:{status,msg}} = res;                
                layer.close(loadindex)
                var msgindex = layer.msg(msg)
                if(status===0){
                    // 设置cookie
                    setCookie('username',$('[name="username"]').val())
                    if($("[name='remember']").prop('checked')){
                        setCookie('rememberusername',$('[name="username"]').val(),7*24*3600)
                    }
                    // 应该跳转
                    setTimeout(()=>{
                        layer.close(msgindex)
                        $('.submit').prop('disabled',false)
                        // var url = localStorage.getItem('url')
                        // if(!url){
                            location.href = 'index.html';
                        // }else{
                            // localStorage.removeItem('url')
                            // location.href = url
                        // }
                        
                    },2000)
                    
                }else{
                    $('.submit').prop('disabled',false)
                    return false;
                }
            }
        })
        return false;
    }
}) */