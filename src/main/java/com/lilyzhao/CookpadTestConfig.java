package com.lilyzhao;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CookpadTestConfig {

    @Bean
    public Map<Integer, UserDto> userIdToInfo() {
        Map<Integer, UserDto> userIdToInfo = new HashMap<>();

        userIdToInfo.put(1, new UserDto(1, "Austin", Arrays.asList(2, 5)));
        userIdToInfo.put(2, new UserDto(2, "Brandon", Arrays.asList(8)));
        userIdToInfo.put(3, new UserDto(3, "Chloe", Arrays.asList(4, 10)));
        userIdToInfo.put(4, new UserDto(4, "Dan", Arrays.asList()));
        userIdToInfo.put(5, new UserDto(5, "Edward", Arrays.asList(4)));
        userIdToInfo.put(6, new UserDto(6, "Frank", Arrays.asList(10)));
        userIdToInfo.put(7, new UserDto(7, "Edward", Arrays.asList(8)));
        userIdToInfo.put(8, new UserDto(8, "Hannah", Arrays.asList(7, 9)));
        userIdToInfo.put(9, new UserDto(9, "Ian", Arrays.asList(8, 10)));
        userIdToInfo.put(10, new UserDto(10, "John", Arrays.asList(3)));


        return userIdToInfo;
    }

    @Bean
    public UserService userService(Map<Integer, UserDto> userIdToInfo) {
        return new MapUserService(userIdToInfo);
    }

    @Bean
    public UserController userController(UserService userService) {
        return new UserController(userService);
    }
}
