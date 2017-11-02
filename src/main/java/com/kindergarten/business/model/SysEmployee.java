package com.kindergarten.business.model;

import java.io.Serializable;
import java.util.Date;

/**
 * @Date Created on 2017/6/26.
 * @Author SongJiuHua.
 * @description
 */
public class SysEmployee implements Serializable{

    private static final long serialVersionUID = 8834064209490941784L;
    /** id */
    private Long id;
    /** 用户名 */
    private String employeeName;
    /** 密码 */
    private String password;
    /** 联系电话 */
    private String employeePhone;
    /** 邮箱地址 */
    private String employeeEmail;
    /** 出生日期 */
    private Date employeeBirthday;
    /** 职位 */
    private String employeePosition;
    /** 毕业院校 */
    private String employeeEduSchool;
    /** 学位 */
    private String employeeDegree;
    /** 状态 1：在职 2：离职 */
    private Integer employeeStatus;
    /** 创建时间 */
    private Date createTime;
    /** 更新时间 */
    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public Date getEmployeeBirthday() {
        return employeeBirthday;
    }

    public void setEmployeeBirthday(Date employeeBirthday) {
        this.employeeBirthday = employeeBirthday;
    }

    public String getEmployeePosition() {
        return employeePosition;
    }

    public void setEmployeePosition(String employeePosition) {
        this.employeePosition = employeePosition;
    }

    public String getEmployeeEduSchool() {
        return employeeEduSchool;
    }

    public void setEmployeeEduSchool(String employeeEduSchool) {
        this.employeeEduSchool = employeeEduSchool;
    }

    public String getEmployeeDegree() {
        return employeeDegree;
    }

    public void setEmployeeDegree(String employeeDegree) {
        this.employeeDegree = employeeDegree;
    }

    public Integer getEmployeeStatus() {
        return employeeStatus;
    }

    public void setEmployeeStatus(Integer employeeStatus) {
        this.employeeStatus = employeeStatus;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
