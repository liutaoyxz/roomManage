package com.liutaoyxz.dao;

import com.liutaoyxz.entity.Room;

import java.util.List;

/**
 * @author liutao
 * @description :
 * @create 2017-02-28 12:48
 */
public interface RoomDao {

    int insertRoom(Room room);

    List<Room> queryAll();

}
