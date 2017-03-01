package com.liutaoyxz.service;


import com.liutaoyxz.entity.Hotel;
import com.liutaoyxz.entity.Room;

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

}
