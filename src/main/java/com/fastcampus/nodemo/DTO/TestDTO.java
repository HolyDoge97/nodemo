package com.fastcampus.nodemo.DTO;

import com.fasterxml.jackson.annotation.JsonProperty;

public class TestDTO {

    @JsonProperty("user_id")
    private String userID;

    @JsonProperty("user_name")
    private String userName;

    @JsonProperty("user_phone")
    private int userPnum;

    @JsonProperty("user_email")
    private String userEmail;

    public String getUserID() {
        return this.userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserPnum() {
        return this.userPnum;
    }

    public void setUserPnum(int userPnum) {
        this.userPnum = userPnum;
    }

    public String getUserEmail() {
        return this.userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String toString() {
        return "User ID : " + this.userID + "\n" +
                "User Name : " + this.userName + "\n" +
                "User Phone Number : " + this.userPnum + "\n" +
                "User Email : " + this.userEmail + "\n";
    }
}
