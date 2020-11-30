package com.object;

public class ucomment {
    private Integer userId;
    private Integer commentId;

    public ucomment() {
    }

    public ucomment(Integer userId, Integer commentId) {
        this.userId = userId;
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    @Override
    public String toString() {
        return "ucomment{" +
                "userId=" + userId +
                ", commentId=" + commentId +
                '}';
    }
}
