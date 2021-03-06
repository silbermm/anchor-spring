package co.silbersoft.anchor.config;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"co.silbersoft.anchor"})
public class AppContext {

    private static final Logger log = LoggerFactory.getLogger(AppContext.class);

    @Bean
    public Config config() {
        return ConfigFactory.load().withFallback(ConfigFactory.systemProperties());
    }

    @Bean
    public SessionFactory sessionFactory() {
        LocalSessionFactoryBuilder sf = new LocalSessionFactoryBuilder(dataSource).scanPackages("co.silbersoft.anchor.models");
        return sf.buildSessionFactory();
    }

    @Bean(name = "transactionManager")
    public HibernateTransactionManager transactionManager() {
        HibernateTransactionManager t = new HibernateTransactionManager();
        t.setSessionFactory(sessionFactory());
        return t;
    }

    @Bean(name = "mailSender")
    public JavaMailSenderImpl mailSender() {
        JavaMailSenderImpl jms = new JavaMailSenderImpl();         
        return jms;
    }

    @Bean
    public SimpleMailMessage mailMessage() {
        SimpleMailMessage m = new SimpleMailMessage();        
        return m;
    }       

    @Autowired DataSource dataSource;
    
}
