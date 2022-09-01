package com.fastcampus.nodemo.DTO;

/*import java.security.Timestamp;*/
import java.sql.Timestamp;

public class boardDTO {
	private int postNum;
	private String postMan;
	private String postTitle;
	private String postMain;
	private Timestamp postTime;
	private int postView;

	private String postComment;
	private String commentMain;
	private int depth;
	private int groupID;
	private int parent_ID;
	private int ID;

	// 글 번호 영역
	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	// 작성자 영역
	public String getPostMan() {
		return postMan;
	}

	public void setPostMan(String postMan) {
		this.postMan = postMan;
	}

	// 제목 영역
	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	// 본문 영역
	public String getPostMain() {
		return postMain;
	}

	public void setPostMain(String postMain) {
		this.postMain = postMain;
	}

	// 날짜+시간 영역
	public Timestamp getPostTime() {
		return postTime;
	}

	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}

	// 조회수 영역
	public int getPostView() {
		return postView;
	}

	public void setPostView(int postView) {
		this.postView = postView;
	}

	// 댓글 영역
	public String getCommentMain() {
		return commentMain;
	}

	public void setCommentMain(String commentMain) {
		this.commentMain = commentMain;
	}

	// 댓글 depth영역
	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	// 댓글 groupID 영역
	public int getGroupID() {
		return groupID;
	}

	public void setGroupID(int groupID) {
		this.groupID = groupID;
	}

	// 대댓글 부모 아이디 영역
	public int getParent_ID() {
		return parent_ID;
	}

	public void setParent_ID(int parent_ID) {
		this.parent_ID = parent_ID;
	}

	// 댓글~대댓글 ID영역
	public int getID() {
		return ID;
	}

	public void setID(int ID) {
		this.ID = ID;
	}

	public String getPostComment() {
		return postComment;
	}

	public void setPostComment(String postComment) {
		this.postComment = postComment;
	}
}
