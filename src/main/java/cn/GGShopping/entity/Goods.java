package cn.GGShopping.entity;

public class Goods {
    private long goodsId;
    private String goodsName;
    private String goodsDetail;

    public long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(long goodsId) {

        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsDetail() {

        return goodsDetail;
    }

    public void setGoodsDetail(String goodsDetail) {

        this.goodsDetail = goodsDetail;
    }
}
