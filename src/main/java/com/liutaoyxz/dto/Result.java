package com.liutaoyxz.dto;

/**
 * @author liutao
 * @description :  返回前端数据
 * @create 2017-03-01 17:05
 */
public class Result {

    private int state;

    private Object data;


    /**
     * 成功
     * @param data
     * @return
     */
    public static Result success(Object data){
        Result result = new Result();
        result.data = data;
        result.state = 1;
        return result;
    }

    /**
     * 失败
     * @return
     */
    public static Result error(){
        Result result = new Result();
        result.state = 0;
        return result;
    }

    public int getState() {
        return state;
    }

    public Object getData() {
        return data;
    }
}
