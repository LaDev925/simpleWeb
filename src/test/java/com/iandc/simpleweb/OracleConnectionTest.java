package com.iandc.simpleweb;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

@SpringBootTest
class OracleConnectionTest {

    @Autowired
    private DataSource dataSource;

    @Test
    void oracleConnectionTest() throws Exception {

        try (
                Connection connection = dataSource.getConnection();
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT 1 FROM DUAL")
        ) {
            if (resultSet.next()) {
                System.out.println("Oracle 연결 성공: " + resultSet.getInt(1));
            }
        }
    }
}
