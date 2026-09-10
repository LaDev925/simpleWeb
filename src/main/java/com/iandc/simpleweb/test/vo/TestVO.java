package com.iandc.simpleweb.test.vo;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
public class TestVO {

    private Long testId;
    private String testName;
    private String testDesc;
    private String useYn;
    private LocalDateTime regDt;
}