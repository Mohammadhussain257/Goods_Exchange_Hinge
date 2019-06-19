package com.mhs.goodsexchangehinge.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CustomeValdation implements ConstraintValidator<Validation, String> {

	@Override
	public void initialize(Validation constraintAnnotation) {

	}

	@Override
	public boolean isValid(String valid, ConstraintValidatorContext arg1) {
		if (valid == null) {
			return false;
		} else if (valid.matches("matches condition message")) {
			return true;
		}
		return false;
	}

}
