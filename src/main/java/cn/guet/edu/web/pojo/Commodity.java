package cn.guet.edu.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author Administrator
 */
public class Commodity implements Serializable{

    private static final long serialVersionUID = 3744454360720003508L;

    /**
     * 主键
     */
    private String commodityId;

    /**
     * 库存
     */
    private Integer number;

    /**
     * 价格
     */
    private Double price;

    /**
     * 名称
     */
    private String name;

    /**
     * 记录产生的时间
     */
    private Timestamp createTime;

    /**
     * 实现乐观锁
     */
    private Timestamp updateTime;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(String commodityId) {
        this.commodityId = commodityId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }
}
