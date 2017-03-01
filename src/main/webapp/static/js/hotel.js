
$('#inTime').datetimepicker({
    format: 'yyyy-mm-dd hh:ii'
});
$('#expectOutTime').datetimepicker({
    format: 'yyyy-mm-dd hh:ii'
});


$('#tell').on('click',function () {
    var guestName = $('#name').val();
    var guestPhone = $('#phone').val();
    var inTime = $('#inTime').val()+":00";
    var expectOutTime = $('#expectOutTime').val()+":00";
    var gender = $('#gender').val();
    if (guestName == ''){
        alert('请填写姓名!');
        return ;
    }

    $.ajax({
        url: "/reserveRoom?"+"guestName="+guestName+"&guestPhone="+guestPhone+"&inTime="+inTime+"&expectOutTime="+expectOutTime+"&gender="+gender,
        type: 'post',
        cache : false,
        // sync : false,
        dataType: 'json',
        contentType:"application/x-www-form-urlencoded",
        // contentType: "application/json; charset=utf-8",

        success: function (data){
            var state = data.state;
            if (state == 1){
                alert("通知成功!");
                window.location.reload();
            }else{
                alert("通知失败,请微信联系")
            }

        }
    });





});