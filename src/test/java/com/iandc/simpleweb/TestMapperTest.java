package com.iandc.simpleweb;

import com.iandc.simpleweb.test.mapper.TestMapper;
import com.iandc.simpleweb.test.vo.TestVO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class TestMapperTest {

    @Autowired
    private TestMapper testMapper;

    @Test
    void selectTestList() {

        List<TestVO> list = testMapper.selectTestList();

        for (TestVO vo : list) {
            System.out.println(
                    vo.getTestId() + " / "
                    + vo.getTestName() + " / "
                    + vo.getTestDesc() + " / "
                    + vo.getUseYn() + " / "
                    + vo.getRegDt()
            );
        }
    }
}