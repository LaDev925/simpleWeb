package com.iandc.simpleweb.test.controller;

import com.iandc.simpleweb.test.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;

import com.iandc.simpleweb.test.vo.TestVO;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TestController {

    private final TestService testService;

    public TestController(TestService testService) {
        this.testService = testService;
    }

    @GetMapping("/test/list")
    public String testList(Model model) {

        model.addAttribute("testList", testService.selectTestList());

        return "test/list";
    }

    @GetMapping("/test/write")
    public String testWrite() {
        return "test/write";
    }

    @PostMapping("/test/write")
    public String testWrite(TestVO testVO) {

        testService.insertTest(testVO);

        return "redirect:/test/list";
    }

    @GetMapping("/test/update")
    public String testUpdate(Long testId, Model model) {

        model.addAttribute("test", testService.selectTest(testId));

        return "test/update";
    }

    @PostMapping("/test/update")
    public String testUpdate(TestVO testVO) {

        testService.updateTest(testVO);

        return "redirect:/test/list";
    }
    @PostMapping("/test/delete")
    public String testDelete(Long testId) {

        testService.deleteTest(testId);

        return "redirect:/test/list";
    }
}