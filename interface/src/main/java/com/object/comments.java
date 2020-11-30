package com.object;

public class comments {
    private Integer commentId;
    private String commentName;
    private String commentDate;

    public comments() {
    }

    public comments(Integer commentId, String commentName, String commentDate) {
        this.commentId = commentId;
        this.commentName = commentName;
        this.commentDate = commentDate;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getCommentName() {
        return commentName;
    }

    public void setCommentName(String commentName) {
        this.commentName = commentName;
    }

    public String getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(String commentDate) {
        this.commentDate = commentDate;
    }

    @Override
    public String toString() {
        return "comments{" +
                "commentId=" + commentId +
                ", commentName='" + commentName + '\'' +
                ", commentDate='" + commentDate + '\'' +
                '}';
    }
}
