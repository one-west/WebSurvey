package spring.config;

import org.springframework.context.annotation.PropertySource;
import spring.survey.SurveyDao;
import spring.survey.SurveyRegisterService;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@PropertySource("classpath:application.properties")
public class SurveyConfig {
    
    @Value("${spring.db.url}")
    private String spring_db_url;
    
    @Value("${spring.db.username}")
    private String spring_db_username;
    
    @Value("${spring.db.password}")
    private String spring_db_password;
    
    @Bean
    public DataSource dataSource() {
        DataSource ds = new DataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl(spring_db_url);
        ds.setUsername(spring_db_username);
        ds.setPassword(spring_db_password);
        ds.setInitialSize(2);
        ds.setMaxActive(10);
        return ds;
    }
    
    @Bean
    public PlatformTransactionManager transactionManager() {
        DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager();
        dataSourceTransactionManager.setDataSource(dataSource());
        return dataSourceTransactionManager;
    }
    
    @Bean
    public SurveyDao surveyDao() {
        return new SurveyDao(dataSource());
    }
    
    @Bean
    public SurveyRegisterService surveyRegisterService() {
        return new SurveyRegisterService();
    }
}
