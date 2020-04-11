package com.krr.project.treausrehunt.configuration;

import com.zaxxer.hikari.HikariDataSource;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;


@Configuration
@Log4j2
public class DataSourceConfiguration {
  public DataSource dataSource(final DataSourceProperties dataSourceProperties,
                               @Value("${spring.datasource.username}") final String username,
                               @Value("${spring.datasource.password}") final String password,
                               @Value("${spring.datasource.hikari.maximum-pool-size}") final int maximumPoolSize) {
    final HikariDataSource dataSource = (HikariDataSource) dataSourceProperties.initializeDataSourceBuilder()
        .username(username)
        .password(password)
        .build();
    dataSource.setMaximumPoolSize(maximumPoolSize);
    dataSource.setRegisterMbeans(true);
    return dataSource;
  }
}
