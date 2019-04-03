window.onload = function(){
    var btnHolder = document.getElementById("btnsTest");
    var statusStr = "hoy!";
    var status = document.getElementsByClassName("status")[0].children[1];
        changeState(btnHolder);
    

    function getShopCount(){
        return document.getElementsByClassName("shopName").length;
    }
    function changeState(elem){
        var count = getShopCount();
        if(count > 10){
            elem.removeAttribute("disabled");
            elem.setAttribute("enabled","");   
        }
        else{
            elem.removeAttribute("enabled");
            elem.setAttribute("disabled","");
            status.innerHTML = statusStr;
            return false;
        }
    }
}