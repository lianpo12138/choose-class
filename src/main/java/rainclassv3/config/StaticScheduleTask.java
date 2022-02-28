package rainclassv3.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/28
 */
@Component
@Configuration
@EnableScheduling
public class StaticScheduleTask {

    /* 每天晚上十一点半的cron表达式*/
    @Scheduled(cron =  "0 0 23 * * ?")
//    @Scheduled(fixedRate=5000)
    private void configureTask(){

        System.out.println("检测是否超出选课时间 "+ LocalDateTime.now());
    }
}
