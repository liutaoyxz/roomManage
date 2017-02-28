package com.liutaoyxz.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("toIndex")
    public String toIndex(){

        return "test";
    }

    @RequestMapping("getJson")
    @ResponseBody
    public Object getJson(){
        JSONObject json = new JSONObject();
        json.put("state","1");
        json.put("list", Arrays.asList("1","2","3"));
        return json;
    }


}
