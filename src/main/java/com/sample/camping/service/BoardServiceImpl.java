package com.sample.camping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.BoardDao;
import com.sample.camping.vo.Board;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao dao;
	
	@Override
	public void addJoin(Board board) {
		dao.addJoin(board);
	}

	@Override
	public void addOpinion(Board board) {
		dao.addOpinion(board);
	}	

	@Override
	public void addReview(Board board) {
		dao.addReview(board);
	}

	@Override
	public void addFree(Board board) {
		dao.addFree(board);
	}
	
}
