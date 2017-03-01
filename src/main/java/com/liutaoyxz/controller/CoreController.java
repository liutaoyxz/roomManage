package com.liutaoyxz.controller;

import com.alibaba.fastjson.JSONObject;
import com.liutaoyxz.dto.Result;
import com.liutaoyxz.entity.Hotel;
import com.liutaoyxz.entity.Room;
import com.liutaoyxz.service.CoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author liutao
 * @description :
 * @create 2017-02-28 15:50
 */
@Controller
public class CoreController {

    @Autowired
    private CoreService coreService;



    @RequestMapping("toIndex")
    public String toIndex(){

        return "index";
    }

    @RequestMapping("getJson")
    @ResponseBody
    public Object getJson(){
        JSONObject json = new JSONObject();
        json.put("state","1");
        json.put("list", Arrays.asList("1","2","3"));
        return json;
    }

    @RequestMapping("toHotelPage")
    public String toHotelPage(){
        return "hotel";
    }

    @RequestMapping("toManagePage")
    public String toManagePage(){
        return "manage";
    }

    @RequestMapping(value = "reserveRoom")
    @ResponseBody
    public Result reserveRoom(Room room){
        int reserveCount = coreService.reserveRoom(room);
        if (reserveCount > 0){
            return Result.success(null);
        }else {
            return Result.error();
        }
    }

    @RequestMapping("addHotel")
    @ResponseBody
    public Result addHotel(Hotel hotel){
        int insertCount = coreService.addHotel(hotel);
        if (insertCount > 0){
            return Result.success(null);
        }else {
            return Result.error();
        }
    }

    @RequestMapping("queryAllHotel")
    @ResponseBody
    public Result queryAllHotel(){
        return Result.success(coreService.queryAllHotel());
    }

    @GetMapping("delHotel/{hotelId}")
    @ResponseBody
    public  Result delHotel(@PathVariable(value = "hotelId") Integer hotelId){
        int delCount = coreService.delHotel(hotelId);
        if (delCount > 0){
            return Result.success(null);
        }else {
            return Result.error();
        }
    }


    @GetMapping("getReserveGuest")
    @ResponseBody
    public Result getReserveGuest(){
        return Result.success(this.coreService.getGuestByState(2));
    }


    @PostMapping("ensertReserve")
    @ResponseBody
    public Result ensertReserve(Room room){
        int updateCount = this.coreService.ensertReserve(room);
        if (updateCount > 0){
            return Result.success(null);
        }else {
            return Result.error();
        }
    }

    @RequestMapping("getInGuest")
    @ResponseBody
    public Result getInGuest(){
        return Result.success(this.coreService.getInGuest());
    }
    @RequestMapping("getInGuest/{roomId}")
    @ResponseBody
    public Result delRoomById(){
        return null;
    }


}
