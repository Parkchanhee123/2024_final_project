package edu.sm.controller;

import edu.sm.app.dto.UsersDto;
import edu.sm.app.service.UsersService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
@RequiredArgsConstructor
public class MainInputController {

    final UsersService usersService;

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id") String id,
                            @RequestParam("pwd") String pwd,
                            HttpSession session) throws Exception {
        log.info("ID: " + id);
        log.info("PWD: " + pwd);

        UsersDto usersDto = usersService.get(id);

        if (usersDto == null) {
            // 로그인 실패: 사용자 정보가 없을 경우
            model.addAttribute("errorMessage", "ID가 존재하지 않습니다.");
            return "login";
        } else {
            // 단순 문자열 비교로 비밀번호 검증
            if (pwd.equals(usersDto.getUserPwd())) {
                // 로그인 성공
                session.setAttribute("loginid", usersDto);
                return "redirect:/";  // 로그인 후 홈으로 리다이렉트
            } else {
                // 로그인 실패: 비밀번호 불일치
                model.addAttribute("errorMessage", "비밀번호가 일치하지 않습니다.");
                return "login";  // 다시 login.jsp로 이동
            }
        }
    }

}
