package com.sangfor.aip.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.sangfor.aip.entity.A;
import com.sangfor.aip.mapper.AM;
import com.sangfor.aip.service.AS;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public class ASI extends ServiceImpl<AM, A> implements AS {

    @Override
    public List<A> getAList(Integer atId) {
        List<A> list = baseMapper.selectList(new EntityWrapper<A>().eq("atId", atId));
        return list;
    }

    @Override
    public List<A> query(String keyword) {
        List<A> list = baseMapper.selectList(new EntityWrapper<A>().like("name", keyword).or().like("description" ,keyword));
        return list;
    }
}
