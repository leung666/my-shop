package com.funtl.my.shop.web.admin.service;

import com.funtl.my.shop.commons.dto.BaseResult;
import com.funtl.my.shop.domain.TbUser;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

public interface TbUserService {
    List<TbUser> selectAll();

    BaseResult save(TbUser tbUser);

    void delete(Long id);

    TbUser getById(Long id);

    void update(TbUser tbUser);

    List<TbUser> selectByName(String username);

    TbUser login(String email, String password);

    List<TbUser> search(TbUser tbUser);
}
