package com.liutaoyxz.dao;

import com.liutaoyxz.entity.Hotel;
import com.liutaoyxz.entity.Room;
import com.liutaoyxz.entity.RoomVo;
import org.apache.ibatis.annotations.Param;

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

    List<Room> getGuestByState(int state);

    int ensertReserve(Room room);

    List<RoomVo> getInGuest();

    List<RoomVo> queryGroupRoom();

    int delRoomByHotelId(Integer roomId);

    int delRoomById(int roomId);

    int checkOutById(int roomId);

    int checkOutGroup(@Param("roomNumber") String roomNumber,@Param("hotelId") int hotelId);

}
