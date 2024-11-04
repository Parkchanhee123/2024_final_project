package edu.sm.app.dto;

import java.time.LocalDateTime;

public class NoticeDto {
    private int noticeId;   //PK
    private String adminId; //FK
    private String noticeName;
    private String noticeDetail;
    private LocalDateTime noticeTime;
}
