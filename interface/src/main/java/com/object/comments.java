package com.object;

public class comments {
    private Integer commentId;
    private String commentTxt;
    private String commentDate;
    private String commemtObject;
    private String userCount;

    public comments() {
    }

    public comments(Integer commentId, String commentTxt, String commentDate, String commemtObject, String userCount) {
        this.commentId = commentId;
        this.commentTxt = commentTxt;
        this.commentDate = commentDate;
        this.commemtObject = commemtObject;
        this.userCount = userCount;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getCommentTxt() {
        return commentTxt;
    }

    public void setCommentTxt(String commentTxt) {
        this.commentTxt = commentTxt;
    }

    public String getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(String commentDate) {
        this.commentDate = commentDate;
    }

    public String getCommemtObject() {
        return commemtObject;
    }

    public void setCommemtObject(String commemtObject) {
        this.commemtObject = commemtObject;
    }

    public String getUserCount() {
        return userCount;
    }

    public void setUserCount(String userCount) {
        this.userCount = userCount;
    }

    @Override
    public String toString() {
        return "comments{" +
                "commentId=" + commentId +
                ", commentTxt='" + commentTxt + '\'' +
                ", commentDate='" + commentDate + '\'' +
                ", commemtObject='" + commemtObject + '\'' +
                ", userCount='" + userCount + '\'' +
                '}';
    }
}
