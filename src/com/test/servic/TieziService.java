package com.test.servic;

import java.util.List;

import com.test.model.Tiezi;
import com.test.model.Tz;

public interface TieziService {
	List<Tiezi> findTz();
	List<Tz> findTzBysmallId(int page,int smallId);
	List<Tz> findTzSumBysmallId(int smallId);
}
