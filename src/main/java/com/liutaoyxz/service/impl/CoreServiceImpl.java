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

    @Override
    public List<Room> getGuestByState(int state) {
        return roomDao.getGuestByState(state);
    }

    @Override
    public int ensertReserve(Room room) {
        return roomDao.ensertReserve(room);
    }

    @Override
    public List<RoomVo> getInGuest() {
        return roomDao.getInGuest();
    }
}
