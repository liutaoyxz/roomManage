package com.liutaoyxz.service;


import com.liutaoyxz.entity.Hotel;
import com.liutaoyxz.entity.Room;
import com.liutaoyxz.entity.RoomVo;

import java.util.List;

/**
 * @author liutao
 * @description :
 * @create 2017-03-01 16:55
 */
public interface CoreService {

    int reserveRoom(Room room);

    int addHotel(Hotel hotel);

    List<Hotel> queryAllHotel();

    int delHotel(int hotelId);

    List<Room> getGuestByState(int state);

    int ensertReserve(Room room);

    List<RoomVo> getInGuest();

    List<RoomVo> queryGroupRoom();

    int delRoomById(int roomId);

    int checkOut(int roomId);

    int checkOutGroup(String roomNumber,int hotelId);



}
