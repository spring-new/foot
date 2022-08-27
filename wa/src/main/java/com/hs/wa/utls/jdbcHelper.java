package com.hs.wa.utls;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.hs.wa.utls.test.druidtest;

import javax.sql.DataSource;
import java.beans.PropertyDescriptor;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class jdbcHelper {
    private static DataSource dataSource;

    //静态初始化，加载 properties 配置文件，创建数据源对象
    static {
        try {
            InputStream is =
                    druidtest.class.getClassLoader().getResourceAsStream("spring/druid.properties");

            Properties prop = new Properties();
            prop.load(is);

            dataSource = DruidDataSourceFactory.createDataSource(prop);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    //通过数据源对象，获取连接对象
    public static Connection getConnection() {
        Connection con = null;
        try {
            con = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    //释放查询操作相关的资源（结果集对象，SQL语句对象，归还数据库连接）
    public static void close(Connection con, Statement stat, ResultSet rs) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (stat != null) {
            try {
                stat.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //释放增删改相关操作的资源（SQL语句对象，归还数据库连接）
    public static void close(Connection con, Statement stat) {
        close(con, stat, null);
    }

    //执行查询 SQL 语句，返回查询的单个值
    public static <T> T queryForValue(String sql, Class<T> returnType, Object... parameters) {
        T result = null;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            con = dataSource.getConnection();
            pst = con.prepareStatement(sql);

            if (parameters.length > 0) {
                for (int i = 0; i < parameters.length; i++) {
                    pst.setObject(i + 1, parameters[i]);
                }
            }

            rs = pst.executeQuery();
            if (rs.next()) {
                result = returnType.cast(rs.getObject(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con, pst, rs);
        }

        return result;
    }

    //执行查询 SQL 语句，返回查询的单个实体对象
    public static <T> T queryForObject(String sql, Class<T> returnType, Object... parameters) {

        T result = null;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            result = returnType.getConstructor().newInstance();
            con = dataSource.getConnection();
            pst = con.prepareStatement(sql);

            if (parameters.length > 0) {
                for (int i = 0; i < parameters.length; i++) {
                    pst.setObject(i + 1, parameters[i]);
                }
            }

            rs = pst.executeQuery();
            if (rs.next()) {
                ResultSetMetaData metaData = rs.getMetaData();
                int count = metaData.getColumnCount();
                for (int i = 1; i <= count; i++) {
                    String columnName = metaData.getColumnName(i);
                    Object value = rs.getObject(columnName);
                    PropertyDescriptor pd =
                            new PropertyDescriptor(columnName.toLowerCase(), returnType);
                    Method writeMethod = pd.getWriteMethod();
                    writeMethod.invoke(result, value);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con, pst, rs);
        }

        return result;
    }

    //执行查询 SQL 语句，返回查询的实体对象列表
    public static <T> List<T> queryForList(String sql, Class<T> returnType, Object... parameters) {
        List<T> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            con = dataSource.getConnection();
            pst = con.prepareStatement(sql);

            if (parameters.length > 0) {
                for (int i = 0; i < parameters.length; i++) {
                    pst.setObject(i + 1, parameters[i]);
                }
            }

            rs = pst.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            int count = metaData.getColumnCount();

            while (rs.next()) {
                T bean = returnType.getConstructor().newInstance();
                for (int i = 1; i <= count; i++) {
                    String columnName = metaData.getColumnName(i);
                    Object value = rs.getObject(columnName);
                    PropertyDescriptor pd =
                            new PropertyDescriptor(columnName.toLowerCase(), returnType);
                    Method writeMethod = pd.getWriteMethod();
                    writeMethod.invoke(bean, value);
                }
                list.add(bean);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con, pst, rs);
        }

        return list;
    }

    //执行增删改 SQL 语句，返回受影响的行数
    public static int executeSql(String sql,Object...parameters) {
        int count = 0;
        Connection con = null;
        PreparedStatement pst = null;
        try{
            con = dataSource.getConnection();
            pst = con.prepareStatement(sql);

            if (parameters.length > 0) {
                for (int i = 0; i < parameters.length; i++) {
                    pst.setObject(i + 1, parameters[i]);
                }
            }

            count = pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con,pst);
        }

        return count;
    }
}
