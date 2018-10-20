package cn.GGShopping.service;

import cn.GGShopping.entity.Goods;

public interface GoodsService {
    //增（添加商品）
    void addGoods(Goods goods);
    //删（删除商品）
    boolean delGoods(int id);
    //改（修改商品信息）
    boolean updGoods(Goods goods);
    //查（一览商品）
    Goods seleGoods(int id);


}
