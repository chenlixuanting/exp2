package cn.guet.edu.web.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * @author Administrator
 */
public class HibernateUtil {

    public static final SessionFactory SESSION_FACTORY;

    //创建sessionFactory
    static {
        try {
            // 采用默认的hibernate.cfg.xml来启动一个Configuration的实例
            Configuration cfg = new Configuration().configure();
            // 以Configuration实例来创建SessionFactory实例
//            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
//            SESSION_FACTORY = cfg.buildSessionFactory(serviceRegistry);
            SESSION_FACTORY = cfg.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    /**
     *  ThreadLocal可以隔离多个线程的数据共享，因此不再需要对线程同步
     */
    public static final ThreadLocal<Session> SESSION_THREAD_LOCAL = new ThreadLocal<Session>();

    /**
     * 创建Session
     * @return
     * @throws HibernateException
     */
    public static Session currentSession()
            throws HibernateException {
        //通过线程对象.get()方法安全创建Session
        Session s = SESSION_THREAD_LOCAL.get();
        // 如果该线程还没有Session,则创建一个新的Session
        if (s == null) {
            s = SESSION_FACTORY.openSession();
            // 将获得的Session变量存储在ThreadLocal变量session里
            SESSION_THREAD_LOCAL.set(s);
        }
        return s;
    }

    /**
     * 关闭Session
     * @throws HibernateException
     */
    public static void closeSession()
            throws HibernateException {
        Session s = SESSION_THREAD_LOCAL.get();
        if (s != null) {
            s.close();
        }
        SESSION_THREAD_LOCAL.set(null);
    }

}
