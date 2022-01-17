package pers.zzh.competition.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import pers.zzh.competition.entity.Users;

import java.util.List;
import java.util.Map;

/**
 * 业务接口
 * @author 张恣豪
 * @since 2022-1-10
 */
public interface UsersService extends IService<Users> {
    /**
     * 分页链表查询
     * @param currentPage 第几页
     * @param pageSize 分几页
     * @return page列表
     */
    Page<Map<String,Object>> selectListPage(int currentPage, int pageSize);

    /**
     * 登录功能（账号为手机号或邮箱）
     * @param phone 手机号
     * @param email 邮箱
     * @param password 密码
     * @return Users列表
     */
    List<Users> login(String phone, String email, String password);
}
