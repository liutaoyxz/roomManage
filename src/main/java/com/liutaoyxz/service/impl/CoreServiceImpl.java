package com.liutaoyxz.service.impl;

import com.liutaoyxz.dao.RoomDao;
import com.liutaoyxz.entity.Hotel;
import com.liutaoyxz.entity.Room;
import com.liutaoyxz.entity.RoomVo;
import com.liutaoyxz.service.CoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author liutao
 * @description :
 * @create 2017-03-01 16:59
 */
@Service
public class CoreServiceImpl implements CoreService{
    @Autowired
    private RoomDao roomDao;



    public int reserveRoom(Room room) {
        return roomDao.reserveRoom(room);
    }

    public int addHotel(Hotel hotel) {
        return roomDao.addHotel(hotel);
    }

    public List<Hotel> queryAllHotel() {
        return roomDao.queryAllHotel();
    }

    public int delHotel(int hotelId) {
        roomDao.delRoomByHotelId(hotelId);
        return roomDao.delHotelById(hotelId);
    }

    public List<Room> getGuestByState(int state) {
        return roomDao.getGuestByState(state);
    }

    public int ensertReserve(Room room) {
        return roomDao.ensertReserve(room);
    }

    public List<RoomVo> getInGuest() {
        return roomDao.getInGuest();
    }

    public int delRoomById(int roomId) {
        return roomDao.delRoomById(roomId);
    }

    public int checkOut(int roomId) {
        return roomDao.checkOutById(roomId);
    }

    public List<RoomVo> queryGroupRoom() {
        return roomDao.queryGroupRoom();
    }

    public int checkOutGroup(String roomNumber, int hotelId) {
        return roomDao.checkOutGroup(roomNumber, hotelId);
    }
}
