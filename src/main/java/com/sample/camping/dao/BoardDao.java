package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Board;
import com.sample.camping.vo.Comment;

public interface BoardDao {
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
	int selectJoinCount(Map<String, Object> map);
	int selectOpinionCount(Map<String, Object> map);
	int selectReviewCount(Map<String, Object> map);
	int selectFreeCount(Map<String, Object> map);
	Board selectJoinByNo(int no);
	Board selectOpinionByNo(int no);
	Board selectReviewByNo(int no);
	Board selectFreeByNo(int no);
	List<Comment> commentByBoardNo(Map<String, Object> map);
	void addComment(Map<String, Object> map);
	void updateLike(Map<String, Object> map);
	void updateHate(Map<String, Object> map);
	
}
