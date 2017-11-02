package com.kindergarten.business.service;

import com.kindergarten.bootmain.base.BaseService;
import com.kindergarten.business.model.SysEmployee;
import com.kindergarten.common.BaseQueryEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * @Date Created on 2017/6/26.
 * @Author SongJiuHua.
 * @description
 */
@Service
public class SysEmployeeService extends BaseService<SysEmployee> {

    private final static Logger logger = LoggerFactory.getLogger(SysEmployeeService.class);

    /**
     *  根据用户名查询用户
     * @param EmployeeName
     * @return
     */
    public SysEmployee getByEmployeeName(String EmployeeName){
        SysEmployee sysEmployee = dao.selectOne("queryByEmployeeName", EmployeeName);
        return sysEmployee;
    }

    /**
     * 查询所有用户信息
     * @return
     */
    public List<SysEmployee> queryAllEmployee(BaseQueryEntity<SysEmployee> baseQueryEntity){
        List<SysEmployee> sysEmployeeList = dao.selectList("queryAllEmployee", baseQueryEntity);
        return sysEmployeeList;
    }

    /**
     * 插入用户信息
     * @param sysEmployee
     */
    public void insertEmployee(SysEmployee sysEmployee){
        dao.insert("insert", sysEmployee);
    }

}
