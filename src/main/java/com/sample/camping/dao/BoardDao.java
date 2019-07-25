package com.sample.camping.dao;

import com.sample.camping.vo.Board;

public interface BoardDao {
	void addJoin(Board board);
	void addOpinion(Board board);
	void addReview(Board board);
	void addFree(Board board);
}
