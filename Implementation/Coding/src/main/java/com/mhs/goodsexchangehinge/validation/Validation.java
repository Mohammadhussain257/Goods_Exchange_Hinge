package com.mhs.goodsexchangehinge.validation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Target(ElementType.FIELD)
@Constraint(validatedBy = CustomeValdation.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface Validation {
	String message() default "validatio message";

	Class<?>[] group() default {};

	Class<? extends Payload>[] payload() default {};
}
