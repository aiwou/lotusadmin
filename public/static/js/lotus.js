var storage=window.localStorage;


$(function () {
    if(storage["color"]!==''||storage["color"]!== 'undefined'){
        changeTheme(storage["color"]);
    }else{
        changeTheme(storage["rgb(0, 150, 136)"]);
    }
})



//切换主题
function changeTheme(color){
    if(storage["color"]!==''||storage["color"]!== 'undefined'){
        storage["color"] = color;
    }
    $(".container").css('background-color',color);
    $(".footer").css('background-color',color);
    storage["color"] = color;
}
$(function () {
    console.log(storage['is_donation']);
    if(storage['is_donation'] == undefined){
        show_donation();
    }
})

// setInterval(show_donation,10*60*1000);

function show_donation(){
    storage['is_donation'] = 'off';
    layer.closeAll();
    lotus_show('更好的支持开源LotusAdmin的开发','donation.html',400,310,50);
}




