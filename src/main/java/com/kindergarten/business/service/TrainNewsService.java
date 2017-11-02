package com.kindergarten.business.service;

import com.kindergarten.bootmain.base.BaseService;
import com.kindergarten.business.model.TrainNewsDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author SongJiuHua.
 * @Date Created on 2017/11/2.
 * @description
 */
@Service
public class TrainNewsService extends BaseService<TrainNewsDto> {


    public List<TrainNewsDto> insertBatch(){
        List<TrainNewsDto> trainNewsDtoList = new ArrayList<TrainNewsDto>();
        TrainNewsDto trainNewsDto = new TrainNewsDto();
        trainNewsDto.setNewsTitle("qq");
        trainNewsDto.setNewsSource("qq");

        TrainNewsDto trainNewsDto2 = new TrainNewsDto();
        trainNewsDto2.setNewsTitle("ww");
        trainNewsDto2.setNewsSource("ww");

        trainNewsDtoList.add(trainNewsDto);
        trainNewsDtoList.add(trainNewsDto2);

        dao.insert("insertBatch", trainNewsDtoList);
        return trainNewsDtoList;
    }

}
