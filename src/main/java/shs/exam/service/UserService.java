package shs.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shs.exam.domain.User;
import shs.exam.repository.UserRepository;
import shs.exam.utils.Encryption;

@Service
public class UserService {

	@Autowired UserRepository userRepository;
	
	public User login(String loginId, String password) {
		User user = userRepository.findOneByLoginId(loginId);
		if(user == null) return null;
		String pw = Encryption.encrypt(password, Encryption.MD5);
		if(user.getPassword().equals(pw) == false) return null;
		return user;
	}
	
	public void join(User user) {
		user.setEnabled(true);
		user.setUserType("사용자");
		user.setPassword(Encryption.encrypt(user.getPassword(), Encryption.MD5));
		userRepository.save(user);
	}
	
	public boolean duplicateCheck(String loginId) {
		if(userRepository.findOneByLoginId(loginId) != null) return false;
		return true;
	}
}
