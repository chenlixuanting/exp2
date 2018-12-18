package cn.guet.edu.web.dao;

import cn.guet.edu.web.pojo.Commodity;
import cn.guet.edu.web.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

/**+
 * @author Administrator
 */
public class UserDao {

    /**
     * 获取所有的商品信息
     *
     * @return
     */
    public List<Commodity> listCommodity() {
        Session session = HibernateUtil.currentSession();
        System.out.println(Thread.currentThread().getName()+session.hashCode());
        Transaction tx = session.beginTransaction();
        String hql = "from cn.guet.edu.web.pojo.Commodity";
        Query query = session.createQuery(hql);
        List<Commodity> commodityList = query.list();
        tx.commit();
        return commodityList;
    }

    /**
     * 保存新商品信息
     *
     * @param commodity
     * @return
     */
    public boolean save(Commodity commodity) {
        Session session = HibernateUtil.currentSession();
        Transaction tx = session.beginTransaction();
        session.save(commodity);
        tx.commit();
        return true;
    }

}
