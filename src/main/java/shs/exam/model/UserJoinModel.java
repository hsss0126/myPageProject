package shs.exam.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;
import shs.exam.domain.User;

@Data
public class UserJoinModel {

	@NotEmpty @Size(min=2, message="정확한 이름을 입력해주세요.")
	String name;
	@NotEmpty @Size(min=4, max=15)
	String loginId;
	@NotEmpty @Size(min=8, max=15)
	String password;
	String rePassword;
	@Email
	String email;
	
	String nickName;
	
	public User toUser() {
		User user = new User();
		user.setLoginId(this.loginId);
		user.setPassword(this.password);
		user.setName(this.name);
		user.setEmail(this.email);
		user.setNickName(this.nickName);
		return user;
	}
}
