import cn.guet.edu.web.pojo.Commodity;
import cn.guet.edu.web.service.UserService;
import org.junit.Test;

import java.sql.Timestamp;

public class HibernateTest {

    @Test
    public void insertCommodity(){

        UserService userService = new UserService();

        for (int x= 0;x<20;x++){
            Commodity commodity = new Commodity();
            commodity.setNumber(x);
            commodity.setPrice((double)x);
            commodity.setDescription("蒸鱼"+x);
            commodity.setCreateTime(new Timestamp(System.currentTimeMillis()));
            userService.saveCommodity(commodity);
        }

    }

}
