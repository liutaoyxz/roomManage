

// 添加酒店

$('#addHotelAction').on('click',function () {
    var hotelName = $('#hotelName').val();
    var phone = $('#phone').val();
    var address = $('#address').val();
    if (hotelName == ''){
        alert('酒店名称必需填写');
        return ;
    }
    $.ajax({
        url: "/addHotel?"+"hotelName="+hotelName+"&phone="+phone+"&address="+address,
        type: 'post',
        cache : false,
        // sync : false,
        dataType: 'json',
        contentType:"application/x-www-form-urlencoded",
        // contentType: "application/json; charset=utf-8",
        success: function (data){
            var state = data.state;
            if (state == 1){
                initHotel();
                $('.mbtn').click();
            }else{
                alert("添加失败,请联系刘涛")
            }

        }
    });

});



function initHotel() {
    var body = $('#table-body-hotel');
    body.find('tr').remove();
    $.ajax({
        url: "/queryAllHotel",
        type: 'post',
        cache : false,
        // sync : false,
        dataType: 'json',
        contentType:"application/x-www-form-urlencoded",
        // contentType: "application/json; charset=utf-8",
        success: function (data){
            var hotels = data.data;
            for(index in hotels){
                var hotel = hotels[index];
                var tr = "<tr><td>"+hotel.hotelName+"</td>"+"<td>"+hotel.address+"</td>"+"<td>"+hotel.phone+"</td>"+"<td><button class='btn btn-sm btn-danger hotel-remove' onclick=removeHotel('"+hotel.hotelId+"','"+hotel.hotelName+"')>删除</button></td></tr>"
                body.append(tr);
            }

        }
    });
};

initHotel();
//删除酒店
function removeHotel(hotelId,hotelName) {

    if (confirm("你确定要删除[ "+hotelName+" ]这个酒店吗?")){
        $.ajax({
            url: "/delHotel/"+hotelId,
            type: 'get',
            cache : false,
            // sync : false,
            dataType: 'json',
            contentType:"application/x-www-form-urlencoded",
            // contentType: "application/json; charset=utf-8",
            success: function (data){
                var state = data.state;
                if (state == 1){
                    alert("删除成功!");
                    initHotel();
                }else{
                    alert("删除失败,请联系刘涛!")
                }
            }
        });
    }
};



