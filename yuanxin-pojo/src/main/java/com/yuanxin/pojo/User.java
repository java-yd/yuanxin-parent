package com.yuanxin.pojo;

import lombok.Data;

/**
 * mysql实体类
 * @author yd
 *
 */
@Data
public class User {
    private String uId;

    private String uAppid;

    private String uName;

    private Byte uSex;

    private String uPic;

    private String uTime;

    private String uTaitou;

    private Byte uTicket;

    private Integer uOrdercount;

}