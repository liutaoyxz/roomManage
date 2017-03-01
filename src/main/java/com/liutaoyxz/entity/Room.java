package com.liutaoyxz.entity;

import java.util.Date;

/**
 * @author liutao
 * @description :  房间实体
 * @create 2017-02-28 12:23
 */
public class Room {

    private Integer roomId;

    private String roomNumber;

    private String guestName;

    private String guestPhone;

    private String inTime;

    private String expectOutTime;

    private String outTime;

    private String createTime;

    private Integer roomSize;

    private Integer hotelId;

    private Integer gender;

    private Integer state;

    private Integer haveCard;

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getGuestName() {
        return guestName;
    }

    public void setGuestName(String guestName) {
        this.guestName = guestName;
    }

    public String getGuestPhone() {
        return guestPhone;
    }

    public void setGuestPhone(String guestPhone) {
        this.guestPhone = guestPhone;
    }

    public String getInTime() {
        return inTime;
    }

    public void setInTime(String inTime) {
        this.inTime = inTime;
    }

    public String getExpectOutTime() {
        return expectOutTime;
    }

    public void setExpectOutTime(String expectOutTime) {
        this.expectOutTime = expectOutTime;
    }

    public String getOutTime() {
        return outTime;
    }

    public void setOutTime(String outTime) {
        this.outTime = outTime;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Integer getRoomSize() {
        return roomSize;
    }

    public void setRoomSize(Integer roomSize) {
        this.roomSize = roomSize;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getHaveCard() {
        return haveCard;
    }

    public void setHaveCard(Integer haveCard) {
        this.haveCard = haveCard;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId=" + roomId +
                ", roomNumber='" + roomNumber + '\'' +
                ", guestName='" + guestName + '\'' +
                ", guestPhone='" + guestPhone + '\'' +
                ", inTime='" + inTime + '\'' +
                ", expectOutTime='" + expectOutTime + '\'' +
                ", outTime='" + outTime + '\'' +
                ", createTime='" + createTime + '\'' +
                ", roomSize=" + roomSize +
                ", hotelId=" + hotelId +
                ", gender=" + gender +
                ", state=" + state +
                ", haveCard=" + haveCard +
                '}';
    }
}
