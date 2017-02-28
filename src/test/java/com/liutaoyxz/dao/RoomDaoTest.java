package com.liutaoyxz.dao;

import com.liutaoyxz.entity.Room;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

import static org.junit.Assert.*;

/**
 * Created by ltlxy on 2017/2/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-bean.xml")
public class RoomDaoTest {

    @Autowired
    private RoomDao roomDao;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Test
    public void insertRoom() throws Exception {
        Room room = new Room();
        room.setGender(1);
        room.setGuestName("刘涛");
        room.setGuestPhone("18640076373");
        room.setHaveCard(1);
        room.setRoomSize(2);
        room.setHotelId(1);
        room.setState(0);
        room.setRoomNumber("1105");
        room.setInTime(new Date());
        logger.info(room.toString());
        int insertCount = roomDao.insertRoom(room);
        System.out.println(insertCount);

    }

    @Test
    public void queryAll() {

        System.out.println(roomDao.queryAll());

    }

}