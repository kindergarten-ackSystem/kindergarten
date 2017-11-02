package com.kindergarten.business.model;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by SongJiuHua on 2016/9/9.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class TrainNewsDto implements Serializable {

	private static final long serialVersionUID = -5236793996163762729L;
	
    private Long id;
    /** 标题 */
    private String newsTitle;
    /** 来源 */
    private String newsSource;
    /** 城市*/
    private String cityName;
    /** 发布时间*/
    private Date newsIssueTime;
    /** 内容*/
    private String newsContent;
    /** 最近操作人*/
    private String operatorName;

    private Date createTime = new Date();

    private Date updateTime = new Date();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsSource() {
        return newsSource;
    }

    public void setNewsSource(String newsSource) {
        this.newsSource = newsSource;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public Date getNewsIssueTime() {
        return newsIssueTime;
    }

    public void setNewsIssueTime(Date newsIssueTime) {
        this.newsIssueTime = newsIssueTime;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
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
