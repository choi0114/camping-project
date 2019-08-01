package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Board;
import com.sample.camping.vo.Comment;

public interface BoardCommentDao {
	
	List<Comment> commentByBoardNo(Map<String, Object> map);
	void addComment(Map<String, Object> map);
	
}
