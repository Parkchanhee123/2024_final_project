package edu.sm.app.service;

import edu.sm.app.dto.NoticeDto;
import edu.sm.app.dto.UsersDto;
import edu.sm.app.frame.SBService;
import edu.sm.app.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class NoticeService implements SBService<Integer, NoticeDto> {

    final NoticeRepository noticeRepository;

    @Override
    public void add(NoticeDto noticeDto) throws Exception {
        noticeRepository.insert(noticeDto);
    }

    @Override
    public void modify(NoticeDto noticeDto) throws Exception {
        noticeRepository.update(noticeDto);
    }

    @Override
    public void del(Integer integer) throws Exception {
        noticeRepository.delete(integer);
    }

    @Override
    public NoticeDto get(Integer integer) throws Exception {
        return noticeRepository.selectOne(integer);
    }

    @Override
    public List<NoticeDto> get() throws Exception {
        return noticeRepository.select();
    }
}
