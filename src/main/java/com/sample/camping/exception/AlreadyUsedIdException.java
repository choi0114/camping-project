package com.sample.camping.exception;

public class AlreadyUsedIdException extends RuntimeException {

	public AlreadyUsedIdException(String message) {
		super(message);
	}
}
