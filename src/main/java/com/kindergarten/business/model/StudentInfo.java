package com.kindergarten.business.model;

import com.kindergarten.common.Entity;

import java.util.Date;

/**
 * @Date Created on 2017/9/28.
 * @Author SongJiuHua.
 * @description
 */
public class StudentInfo extends Entity {

    /** 学号 */
    private String studentNo;
    /** 学生姓名 */
    private String studentName;
    /** 性别 M:男 F：女 */
    private String studentGender;
    /** 生日 */
    private String studentBirthday;
    /** 班级 */
    private String studentClass;
    /** 年级 */
    private String studentGrade;
    /** 入学时间 */
    private Date enrollTime;
    /** 备注 */
    private String remark;
    /** 学费 */
    private String tuitionFee;
    /** 邮箱 */
    private String studentEmail;
    /** 电话 */
    private String studentPhone;
    /** 状态 */
    private String studentStatus;

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentGender() {
        return studentGender;
    }

    public void setStudentGender(String studentGender) {
        this.studentGender = studentGender;
    }

    public String getStudentBirthday() {
        return studentBirthday;
    }

    public void setStudentBirthday(String studentBirthday) {
        this.studentBirthday = studentBirthday;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getStudentGrade() {
        return studentGrade;
    }

    public void setStudentGrade(String studentGrade) {
        this.studentGrade = studentGrade;
    }


    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }


    public String getStudentEmail() {
        return studentEmail;
    }

    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    public String getStudentPhone() {
        return studentPhone;
    }

    public void setStudentPhone(String studentPhone) {
        this.studentPhone = studentPhone;
    }

    public Date getEnrollTime() {
        return enrollTime;
    }

    public void setEnrollTime(Date enrollTime) {
        this.enrollTime = enrollTime;
    }

    public String getTuitionFee() {
        return tuitionFee;
    }

    public void setTuitionFee(String tuitionFee) {
        this.tuitionFee = tuitionFee;
    }

    public String getStudentStatus() {
        return studentStatus;
    }

    public void setStudentStatus(String studentStatus) {
        this.studentStatus = studentStatus;
    }
}
