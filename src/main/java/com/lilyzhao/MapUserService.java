package com.lilyzhao;

import java.util.Map;
import java.util.Objects;

public class MapUserService implements UserService {

    private final Map<Integer, UserDto> userIdToInfo;

    public MapUserService(Map<Integer, UserDto> userIdToInfo) {
        this.userIdToInfo = Objects.requireNonNull(userIdToInfo);
    }

    @Override
    public UserDto getUserInfo(int id) {
        return userIdToInfo.get(id);
    }

}
