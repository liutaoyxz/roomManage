//客人

function initInGuest() {
    $.ajax({
        url: "/getInGuest",
        type: 'get',
        cache: false,
        // sync : false,
        dataType: 'json',
        contentType: "application/x-www-form-urlencoded",
        // contentType: "application/json; charset=utf-8",
        success: function (data) {
            var state = data.state;
            var guestes = data.data;
            if (state == 1) {
                var body = $('#in-guest-body');
                body.find('tr').remove();
            // <button class="btn btn-info guest-info-btn" >详情</button>
            //         <button class="btn btn-success">退房</button>
                for (index in guestes) {
                    var room = guestes[index];
                    var gstate = room.state,gstateStr = '已退房',
                        btns = "<button class='btn btn-info guest-info-btn' onclick=guestInfo('"+room.guestName+"','"+room.hotelName+"','"+room.roomNumber+"','"+room.guestPhone+"','"+room.haveCard+"')>详情</button>";
                    if(gstate == 0){
                        gstateStr = '已入住';
                        var btn2 = "<button class='btn btn-success' onclick='(room.roomId)'>退房</button>";
                        btns = btns + btn2;
                    }

                    var tr = "<tr><td>"+room.guestName+"</td><td>"+gstateStr+"</td><td>"+btns+"</td></tr>";
                    body.append(tr);
                }
            } else {
                alert("获取预约客人失败,请联系刘涛")
            }

        }
    });
}
initInGuest();
//初始化客人详情弹窗
function guestInfo(guestName,hotelName,roomNumber,guestPhone,haveCard) {
    var haveCardStr = '是';
    if (haveCard == 0){
        haveCardStr = '否';
    }
    $('#guest-info-name').text(guestName);
    $('#guest-info-room-number').text(roomNumber);
    $('#guest-info-phone').text(guestPhone);
    $('#guest-info-hotel-name').text(hotelName);
    $('#guest-info-have-card').text(haveCardStr);
    $('#guest-info').modal();
}



//预约

//初始化预约列表
    function initReserveGuest() {
        $.ajax({
            url: "/getReserveGuest",
            type: 'get',
            cache: false,
            // sync : false,
            dataType: 'json',
            contentType: "application/x-www-form-urlencoded",
            // contentType: "application/json; charset=utf-8",
            success: function (data) {
                var state = data.state;
                var guestes = data.data;
                if (state == 1) {
                    var body = $('#reserve-table-body');
                    body.find('tr').remove();
                    for (index in guestes) {
                        var room = guestes[index];
                        var gender = room.gender, genderStr = '男';
                        if (gender == 2) {
                            genderStr = '女';
                        }
                        var tr = "<tr><td>" + room.guestName + "</td><td>" + genderStr + "</td><td><button class='btn btn-info reserve-btn' onclick=reserveInfo('" + room.guestName + "'," + room.roomId + ")>分配</button><button class='btn btn-danger' data-id='" + room.roomId + "'>删除</button></td></tr>";
                        body.append(tr);

                    }
                } else {
                    alert("获取预约客人失败,请联系刘涛")
                }

            }
        });
    }

    initReserveGuest();
//分配按钮
    function reserveInfo(guestName, roomId) {
        $('#reserve-guest-roomId').val(roomId);
        $('#reserve-guest-name').text(guestName);
        $('#reserve-modal').modal();
    }

//分配确认
    function ensertReserve() {
        var roomId = $('#reserve-guest-roomId').val();
        var hotelId = $('#hotel-sel').val();
        var roomNumber = $.trim($('#roomNumber').val());
        var haveCard = $('#have-card').val();
        if (roomNumber == '') {
            alert("请填写房间号");
            return;
        }
        if (hotelId == '') {
            alert('请先添加酒店');
            return;
        }
        $.ajax({
            url: "/ensertReserve?" + "hotelId=" + hotelId + "&roomId=" + roomId + "&roomNumber=" + roomNumber + "&haveCard=" + haveCard,
            type: 'post',
            cache: false,
            // sync : false,
            dataType: 'json',
            contentType: "application/x-www-form-urlencoded",
            // contentType: "application/json; charset=utf-8",
            success: function (data) {
                var state = data.state;
                if (state == 1) {
                    initInGuest();
                    initReserveGuest();
                    $('#close-reserve').click();
                } else {
                    alert("分配失败,请联系刘涛")
                }

            }
        });
    }


// 添加酒店

    $('#addHotelAction').on('click', function () {
        var hotelName = $('#hotelName').val();
        var phone = $('#phone').val();
        var address = $('#address').val();
        if (hotelName == '') {
            alert('酒店名称必需填写');
            return;
        }
        $.ajax({
            url: "/addHotel?" + "hotelName=" + hotelName + "&phone=" + phone + "&address=" + address,
            type: 'post',
            cache: false,
            // sync : false,
            dataType: 'json',
            contentType: "application/x-www-form-urlencoded",
            // contentType: "application/json; charset=utf-8",
            success: function (data) {
                var state = data.state;
                if (state == 1) {
                    initHotel();
                    $('.mbtn').click();
                } else {
                    alert("添加失败,请联系刘涛")
                }

            }
        });

    });


//初始化酒店
    function initHotel() {
        var body = $('#table-body-hotel');
        body.find('tr').remove();
        $.ajax({
            url: "/queryAllHotel",
            type: 'post',
            cache: false,
            // sync : false,
            dataType: 'json',
            contentType: "application/x-www-form-urlencoded",
            // contentType: "application/json; charset=utf-8",
            success: function (data) {
                var hotels = data.data;
                var hotelSel = $('#hotel-sel');
                hotelSel.empty();
                for (index in hotels) {
                    //初始化下拉框
                    var hotel = hotels[index];
                    var tr = "<tr><td>" + hotel.hotelName + "</td>" + "<td>" + hotel.address + "</td>" + "<td>" + hotel.phone + "</td>" + "<td><button class='btn btn-sm btn-danger hotel-remove' onclick=removeHotel('" + hotel.hotelId + "','" + hotel.hotelName + "')>删除</button></td></tr>"
                    body.append(tr);
                    var option = "<option value=" + hotel.hotelId + ">" + hotel.hotelName + "</option>";
                    hotelSel.append(option);
                }

            }
        });
    };

    initHotel();
//删除酒店
    function removeHotel(hotelId, hotelName) {

        if (confirm("你确定要删除[ " + hotelName + " ]这个酒店吗?[ "+hotelName+" ]的所有入住信息将会删除")) {
            $.ajax({
                url: "/delHotel/" + hotelId,
                type: 'get',
                cache: false,
                // sync : false,
                dataType: 'json',
                contentType: "application/x-www-form-urlencoded",
                // contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var state = data.state;
                    if (state == 1) {
                        alert("删除成功!");
                        initHotel();
                        initInGuest();

                    } else {
                        alert("删除失败,请联系刘涛!")
                    }
                }
            });
        }
    };



