package com.lilyzhao;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

@SpringBootApplication
@Import(CookpadTestConfig.class)
public class CookpadTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(CookpadTestApplication.class, args);
	}
}
