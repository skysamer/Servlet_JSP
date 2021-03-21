package com.edu.customTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MyCustomTag extends TagSupport{
	int cnt=1;
	
	private String color;
	
	public String getColor() {
		return color;
	}
	
	public void setColor(String color) {
		this.color=color;
	}
	
	@Override
	public int doStartTag() throws JspException {
		System.out.println("시작태그를 만났습니다.");
		System.out.println("color 속성 값: "+color);
		return EVAL_BODY_INCLUDE;
	}
	
	@Override
	public int doAfterBody() throws JspException {
		System.out.println("Body 처리가 끝났습니다: "+cnt);
			return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("끝태그를 만났습니다.");
		return SKIP_PAGE;
	}

}
