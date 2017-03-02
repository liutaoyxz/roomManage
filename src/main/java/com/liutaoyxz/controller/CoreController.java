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


    @RequestMapping("delRoom/{roomId}")
    @ResponseBody
    public Result delRoomById(@PathVariable(value = "roomId") int roomId){
         coreService.delRoomById(roomId);
        return Result.success(null);
    }



    @RequestMapping("checkOut/{roomId}")
    @ResponseBody
    public Result checkOut(@PathVariable(value = "roomId") int roomId){
        int checkOutCount = coreService.checkOut(roomId);
        if (checkOutCount > 0){
            return Result.success(null);
        }else {
            return Result.error();
        }
    }


    @GetMapping("queryGroupRoom")
    @ResponseBody
    public Result queryGroupRoom(){
        return Result.success(this.coreService.queryGroupRoom());
    }




    @RequestMapping("checkOutGroup/{roomNumber}/{hotelId}")
    @ResponseBody
    public Result checkOutGroup(@PathVariable(value = "roomNumber") String roomNumber,
                                @PathVariable(value = "hotelId") int hotelId){
        int checkOutCount = coreService.checkOutGroup(roomNumber,hotelId);
        if (checkOutCount > 0){
            return Result.success(null);
        }else {
            return Result.error();
        }
    }


}
