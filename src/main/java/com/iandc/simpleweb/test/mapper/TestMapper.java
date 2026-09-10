package com.iandc.simpleweb.test.mapper;

import com.iandc.simpleweb.test.vo.TestVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TestMapper {

    List<TestVO> selectTestList();
    int insertTest(TestVO testVO);
}
