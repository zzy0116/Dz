package com.test.dao;

import java.util.List;

import com.test.model.HuiTie;
import com.test.model.SendHuitie;
import com.test.model.SendTiezi;
import com.test.model.TieZipage;
import com.test.model.Tiezi;
import com.test.model.Tz;

public interface TieziDao {
	List<Tiezi>  findTz();
	List<Tz> findTzBysmallId(int page,int smallId);
	List<Tz> findTzSumBysmallId(int smallId);
	TieZipage findTzByTieId(int TieId);
	List<HuiTie> findhuitieByTieId(int TieId);
	void insertsendtiezi(SendTiezi sendTiezi);
	void inserthuitie(SendHuitie sendHuitie);
	
}
