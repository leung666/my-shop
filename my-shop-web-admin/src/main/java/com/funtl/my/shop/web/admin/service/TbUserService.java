package com.funtl.my.shop.web.admin.service;

import com.funtl.my.shop.commons.dto.BaseResult;
import com.funtl.my.shop.commons.dto.PageInfo;
import com.funtl.my.shop.domain.TbUser;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

public interface TbUserService {
    List<TbUser> selectAll();

    BaseResult save(TbUser tbUser);

    void delete(Long id);

    TbUser getById(Long id);

    void update(TbUser tbUser);

    TbUser login(String email, String password);

    void deleteMulti(String[] ids);

    PageInfo<TbUser> page(int start, int length, int draw, TbUser tbUser);

    int count(TbUser tbUser);
}
