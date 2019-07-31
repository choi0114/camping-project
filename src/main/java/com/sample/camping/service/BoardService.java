package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Board;
import com.sample.camping.vo.Comment;

public interface BoardService {
	void addJoin(Board board);
	void addOpinion(Board board);
	void addReview(Board board);
	void addFree(Board board);
	List<Board> selectJoin();
	List<Board> selectOpinion();
	List<Board> selectReview();
	List<Board> selectFree();
	List<Board> selectJoinPage(Map<String, Object> map);
	List<Board> selectOpinionPage(Map<String, Object> map);
	List<Board> selectReviewPage(Map<String, Object> map);
	List<Board> selectFreePage(Map<String, Object> map);
	int selectJoinCount();
	int selectOpinionCount();
	int selectReviewCount();
	int selectFreeCount();
	Board selectJoinByNo(int no);
	Board selectOpinionByNo(int no);
	Board selectReviewByNo(int no);
	Board selectFreeByNo(int no);
	List<Comment> commentByBoardNo(Map<String, Object> map);
	void addComment(Map<String, Object> map);
}
