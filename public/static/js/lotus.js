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




