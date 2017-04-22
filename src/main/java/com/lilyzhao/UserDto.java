package com.lilyzhao;

import java.util.List;

public class UserDto {

    private int id;

    private String name;

    private List<Integer> friends;

    public UserDto(int id, String name, List<Integer> friends) {
        this.id = id;
        this.name = name;
        this.friends = friends;
    }

    public UserDto() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Integer> getFriends() {
        return friends;
    }

    public void setFriends(List<Integer> friends) {
        this.friends = friends;
    }
}
