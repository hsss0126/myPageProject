package shs.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import shs.exam.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findOneByLoginId(String loginId);
}
