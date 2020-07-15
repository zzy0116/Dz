package com.test.servic.servicImpl;

import java.util.ArrayList;
import java.util.List;

import com.test.dao.TieziDao;

import com.test.dao.daoImpl.TieziDaoImpl;

import com.test.model.Tiezi;
import com.test.model.Tz;
import com.test.servic.TieziService;

public class TieziServiceImpl implements TieziService {

	@Override
	public List<Tiezi> findTz() {
		TieziDao tiezidao = new TieziDaoImpl();
		List<Tiezi> tiezis = tiezidao.findTz();
		return tiezis;
	}

	@Override
	public List<Tz> findTzBysmallId(int page, int smallId) {
		List<Tz> tzs = new ArrayList<>();
		 TieziDao tzdaoimpl = new TieziDaoImpl();
		tzs =tzdaoimpl.findTzBysmallId(page, smallId);
		return tzs;
	}

	@Override
	public List<Tz> findTzSumBysmallId(int smallId) {
		List<Tz> tzs = new ArrayList<>();
		 TieziDao tzdaoimpl = new TieziDaoImpl();
		tzs =tzdaoimpl.findTzSumBysmallId(smallId);
		return tzs;
	}

}
