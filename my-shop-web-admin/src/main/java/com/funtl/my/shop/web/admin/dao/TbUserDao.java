package com.funtl.my.shop.web.admin.dao;

import com.funtl.my.shop.domain.TbUser;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TbUserDao {
    List<TbUser> selectAll();

    void insert(TbUser tbUser);

    void delete(Long id);

    TbUser getById(Long id);

    void update(TbUser tbUser);

    TbUser getByEmail(String email);

    void deleteMulti(String[] ids);

    List<TbUser> page(Map<String, Object> params);

    int count(TbUser tbUser);
}
