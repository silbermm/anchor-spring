package co.silbersoft.anchor.forms;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class MailForm {

	private String from;
	private String message;
	
	@Email
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	
	@Min(4)
	@Max(1200)
	@NotEmpty
	@NotNull
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
}
