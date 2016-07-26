package ${packageName};

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
* Created by Administrator on 2016/5/3.
*/
@SpringBootApplication
@Configuration
@ComponentScan
@EnableAutoConfiguration
@EnableTransactionManagement//事物管理
public class Application {
public static void main(String[] args) throws Exception {
SpringApplication.run(Application.class, args);
}
}
