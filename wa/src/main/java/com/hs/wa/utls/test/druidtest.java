package com.hs.wa.utls.test;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.hs.wa.utls.DBUtil;
import org.springframework.beans.factory.annotation.Autowired;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class druidtest {

    public static void main(String[] args) throws Exception {

        //加载配置文件
        InputStream is = druidtest.class.getClassLoader().getResourceAsStream("spring/druid.properties");
        Properties prop = new Properties();
        prop.load(is);

        //根据配置文件内容，创建出数据源对象
        DataSource dataSource = DruidDataSourceFactory.createDataSource(prop);

        //通过数据源对象获取数据库连接
        //如果连接池中的连接已经被用完，则会等待一定的时间（所配置的时间）
        //如果等待超时，就会抛出异常
        Connection con = dataSource.getConnection();

        //执行 sql 语句，获取并打印结果集
        String sql = "select * from user";
        PreparedStatement pst = con.prepareStatement(sql);
        System.out.println(pst);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {

            while (rs.next()) {
                int id = rs.getInt("id");
                String password = rs.getString("password");
                int age = rs.getInt("age");

                System.out.println(id + "   " + password + "   " + age);

                //释放资源
                rs.close();
                pst.close();

                //这里的关闭连接，并没有关闭和销毁连接
                //而是把连接对象，放入到连接池中，供后续访问时直接拿去使用
                con.close();
            }
        }
    }
}