package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;



public class DaoTest {

	public static void main(String[] args) {
		GuestbookDao dao=new GuestbookDao();
		List<GuestbookVo> list=dao.getList();
		System.out.println(list.toString());

	}

}
