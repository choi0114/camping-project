package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.BoardCommentDao;
import com.sample.camping.dao.BoardDao;
import com.sample.camping.vo.Board;
import com.sample.camping.vo.Comment;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao dao;
	
	@Autowired
	private BoardCommentDao commentdao;
	
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

	@Override
	public List<Board> selectJoin() {
		// TODO Auto-generated method stub
		return dao.selectJoin();
	}

	@Override
	public List<Board> selectOpinion() {
		// TODO Auto-generated method stub
		return dao.selectOpinion();
	}

	@Override
	public List<Board> selectReview() {
		// TODO Auto-generated method stub
		return dao.selectReview();
	}

	@Override
	public List<Board> selectFree() {
		// TODO Auto-generated method stub
		return dao.selectFree();
	}

	@Override
	public List<Board> selectJoinPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectJoinPage(map);
	}

	@Override
	public List<Board> selectOpinionPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectOpinionPage(map);
	}

	@Override
	public List<Board> selectReviewPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectReviewPage(map);
	}

	@Override
	public List<Board> selectFreePage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectFreePage(map);
	}

	@Override
	public int selectJoinCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectJoinCount(map);
	}

	@Override
	public int selectOpinionCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectOpinionCount(map);
	}

	@Override
	public int selectReviewCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectReviewCount(map);
	}

	@Override
	public int selectFreeCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectFreeCount(map);
	}

	@Override
	public Board selectJoinByNo(int no) {
		// TODO Auto-generated method stub
		return dao.selectJoinByNo(no);
	}

	@Override
	public Board selectOpinionByNo(int no) {
		// TODO Auto-generated method stub
		return dao.selectOpinionByNo(no);
	}

	@Override
	public Board selectReviewByNo(int no) {
		// TODO Auto-generated method stub
		return dao.selectReviewByNo(no);
	}

	@Override
	public Board selectFreeByNo(int no) {
		// TODO Auto-generated method stub
		return dao.selectFreeByNo(no);
	}

	@Override
	public List<Comment> commentByBoardNo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return commentdao.commentByBoardNo(map);
	}

	@Override
	public void addComment(Map<String, Object> map) {
		// TODO Auto-generated method stub
		commentdao.addComment(map);
	}

	@Override
	public void updateLike(Map<String, Object> map) {
		// TODO Auto-generated method stub
		dao.updateLike(map);
	}
	
	@Override
	public void updateHate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		dao.updateHate(map);
	}

	
	
}
