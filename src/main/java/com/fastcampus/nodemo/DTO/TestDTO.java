package com.fastcampus.nodemo.DTO;

import org.springframework.lang.NonNull;

import com.fasterxml.jackson.annotation.JsonProperty;

//@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class TestDTO {

    @NonNull
    @JsonProperty("user_id")
    private String userID;

    @NonNull
    @JsonProperty("user_name")
    private String userName;

    @NonNull
    @JsonProperty("user_phone")
    private String userPnum;

    @NonNull
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
