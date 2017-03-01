package com.liutaoyxz.entity;

import java.util.Date;

/**
 * @author liutao
 * @description :  酒店实体
 * @create 2017-02-28 12:26
 */
public class Hotel {


    private Integer hotelId;

    private String phone;

    private String address;

    private String hotelName;

    private Date createTime;

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId=" + hotelId +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", hotelName='" + hotelName + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
