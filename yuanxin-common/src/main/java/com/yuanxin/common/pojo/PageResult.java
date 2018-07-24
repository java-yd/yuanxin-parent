package com.yuanxin.common.pojo;

import java.util.List;

import com.github.pagehelper.PageInfo;

import lombok.Data;

@Data
public class PageResult<T> {

	private List<T> dataList; //列表数据
    private Integer currentPage; //当前页
    private Integer totalCount;//总条数
    private Integer pageNumShown; //总页数
    private Integer pageSize;  //当前页条数


    @SuppressWarnings(value = "unchecked")
    public static <T> PageResult<T> list(PageInfo<T> pageInfo) {
    	PageResult<T> res =  new PageResult();
        res.dataList = pageInfo.getList();
        res.currentPage = pageInfo.getPageNum();
        res.totalCount = (int)pageInfo.getTotal();
        res.pageNumShown = pageInfo.getPages();
        res.pageSize = pageInfo.getSize();
        return res;
    }

}
