package com.example;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class WarApplicationTests {

	@Test
	void contextLoads() {
//메소드 체인 방식
		String str = "Hello".toLowerCase()
				.toUpperCase()
				.concat("World")
				.toLowerCase()
				.toUpperCase();
	}

}
