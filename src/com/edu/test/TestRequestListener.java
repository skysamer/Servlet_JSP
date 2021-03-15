package com.edu.test;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class TestRequestListener implements ServletRequestListener{
	
	public TestRequestListener() {
		System.out.println("TestRequestListner 객체 생성");
	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("객체 해제");
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("객체 초기화");
	}

}
