package com.yuanxin.service;

import com.yuanxin.common.pojo.PageResult;

public interface UserService {

	PageResult findAllUsers(Integer currentPage, Integer pageSize);

}
