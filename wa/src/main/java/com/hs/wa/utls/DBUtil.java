package com.hs.wa.utls;


import com.alibaba.druid.pool.DruidDataSourceFactory;
import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

@Service
public class DBUtil {
    private static final ThreadLocal<Connection> threadLocal = new ThreadLocal<>();
    private static DataSource dataSource = null;

    private DBUtil() {
    }

    //配置文件加载，只执行一次
    static {
        try (InputStream is = DBUtil.class.getResourceAsStream("/spring/mysql.properties")) {
            Properties properties = new Properties();
            properties.load(is);
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e1) {
            throw new RuntimeException("读取配置文件异常", e1);
        }
    }

    //获取连接
    public static Connection getConnection() {
        Connection conn = null;
        try {
            //从当前线程获得 conn
            conn = threadLocal.get();
            if (conn == null || conn.isClosed()) {
                conn = dataSource.getConnection();
                threadLocal.set(conn);
            }
        } catch (Exception e) {
            throw new RuntimeException("连接数据库异常", e);
        }
        return conn;
    }

    public static QueryRunner getQueryRunner() {
        return new QueryRunner(dataSource);
    }

    public static void release(Connection conn) {
        // 建议采用这种形式来释放资源，因为finally里面的一定会被释放
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}

