package com.liutaoyxz.dao;

import com.liutaoyxz.entity.Hotel;
import com.liutaoyxz.entity.Room;

import java.util.List;

/**
 * @author liutao
 * @description :
 * @create 2017-02-28 12:48
 */
public interface RoomDao {

    int insertRoom(Room room);

    int reserveRoom(Room room);

    List<Room> queryAll();

    int addHotel(Hotel hotel);

    List<Hotel> queryAllHotel();

    int delHotelById(Integer hotelId);

}
