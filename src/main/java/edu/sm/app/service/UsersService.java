package edu.sm.app.service;

import edu.sm.app.dto.UsersDto;
import edu.sm.app.frame.SBService;
import edu.sm.app.repository.UsersRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UsersService implements SBService<String, UsersDto> {

    final UsersRepository usersRepository;

    @Override
    public void add(UsersDto usersDto) throws Exception {
        usersRepository.insert(usersDto);
    }

    @Override
    public void modify(UsersDto usersDto) throws Exception {
        usersRepository.update(usersDto);
    }

    @Override
    public void del(String s) throws Exception {
        usersRepository.delete(s);
    }

    @Override
    public UsersDto get(String s) throws Exception {
        return usersRepository.selectOn(s);
    }

    @Override
    public List<UsersDto> get() throws Exception {
        return usersRepository.select();
    }
}