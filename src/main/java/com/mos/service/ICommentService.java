package com.mos.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.mos.entity.Comment;

public interface ICommentService {
	Comment findCommentById(long comment_id);
	Integer addComemnt(Comment comment);
	Integer updateComment(Comment comment);
	Integer deleteComment(long comment_id);
	List<Comment> findAllComments();
	List<Comment> findCommentsByMovieId(long movie_id);
	PageInfo<Comment> findAllCommentsBySplitPage(Integer page, Integer limit, String keyword);
	PageInfo<Comment> findCommentsByUserName(Integer page, Integer limit, String user_name);
}
