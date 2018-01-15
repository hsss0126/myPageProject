package shs.exam.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shs.exam.domain.User;
import shs.exam.model.UserJoinModel;
import shs.exam.service.UserService;

@Controller
public class GuestController {

	@Autowired UserService userService;
	
	@RequestMapping({"/", "guest/index"})
	public String index() {
		return "guest/index";
	}
	
	@RequestMapping(value="guest/login", method=RequestMethod.GET)
	public String login() {
		return "guest/login";
	}
	
	@RequestMapping(value="guest/join", method=RequestMethod.GET)
	public String join(UserJoinModel user, Model model) {
		return "guest/join";
	}
	
	@RequestMapping(value="guest/join", method=RequestMethod.POST)
	public String join(@Valid UserJoinModel userJoinModel, Model model, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) return "guest/join";
		User user = userJoinModel.toUser();
		if(!userService.duplicateCheck(user.getLoginId())) {
			model.addAttribute("duplicate", "중복된 ID입니다.");
			return "guest/join";
		}
		userService.join(user);
		return "redirect:login?joinSuccess";
	}
}
