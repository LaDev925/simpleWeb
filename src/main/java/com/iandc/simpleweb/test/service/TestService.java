package com.iandc.simpleweb.test.service;

import com.iandc.simpleweb.test.mapper.TestMapper;
import com.iandc.simpleweb.test.vo.TestVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService {

    private final TestMapper testMapper;

    public TestService(TestMapper testMapper) {
        this.testMapper = testMapper;
    }

    public List<TestVO> selectTestList() {
        return testMapper.selectTestList();
    }

    public void insertTest(TestVO testVO) {
        testMapper.insertTest(testVO);
    }

    public TestVO selectTest(Long testId) {
        return testMapper.selectTest(testId);
    }

    public void updateTest(TestVO testVO) {
        testMapper.updateTest(testVO);
    }
    public void deleteTest(Long testId) {
        testMapper.deleteTest(testId);
    }
}