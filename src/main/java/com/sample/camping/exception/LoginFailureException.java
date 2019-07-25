package com.sample.camping.exception;

public class LoginFailureException extends RuntimeException {

	public LoginFailureException(String message) {
		super(message);
	}
}
