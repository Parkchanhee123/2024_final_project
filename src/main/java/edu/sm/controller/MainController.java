package edu.sm.controller;

import edu.sm.app.dto.UsersDto;
import edu.sm.app.service.UsersService;
import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    @RequestMapping("/")
    public String main(Model model) {
        log.info("Started Main");
        model.addAttribute("left", "left");
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        log.info("Started login");
        return "login";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        log.info("Started register");
        return "register";
    }

    @RequestMapping("/additional-info")
    public String additional(Model model) {
        return "additional-info";
    }

    // 모르겠으니까 일단 여기 작성했음
    @RequestMapping("/mypage")
    public String myPage(Model model, HttpSession session) throws Exception {
        UsersDto usersDto = (UsersDto) session.getAttribute("loginid");
        model.addAttribute("user", usersDto);
        model.addAttribute("center", "mypage");

        return "index";
    }

}
