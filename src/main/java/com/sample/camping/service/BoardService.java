package com.sample.camping.service;

import com.sample.camping.vo.Board;

public interface BoardService {
	void addJoin(Board board);
	void addOpinion(Board board);
	void addReview(Board board);
	void addFree(Board board);
}
