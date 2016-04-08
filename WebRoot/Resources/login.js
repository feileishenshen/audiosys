function showzhuce(){
        document.getElementById("sdenglu").style.display = "none";
        document.getElementById("szhuce").style.display = "block";
        document.getElementById("zhuce").innerHTML = "正在注册";
        document.getElementById("denglu").innerHTML = "登录";        
    }
function showdenglu() {
    document.getElementById("sdenglu").style.display = "block";
    document.getElementById("szhuce").style.display = "none";
    document.getElementById("zhuce").innerHTML = "注册";
    document.getElementById("denglu").innerHTML = "正在登录";
}
