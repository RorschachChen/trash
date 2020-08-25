package com.sangfor.aip.service;

import com.sangfor.aip.entity.A;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface AS {

    public List<A> getAList(Integer atId);

    public List<A> query(String keyword);
}
