package com.test.dao.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.example.utils.DruidUtils;
import com.test.dao.TieziDao;
import com.test.model.HuiTie;
import com.test.model.SendHuitie;
import com.test.model.SendTiezi;
import com.test.model.TieZipage;
import com.test.model.Tiezi;
import com.test.model.Tz;


public class TieziDaoImpl implements TieziDao{

	@Override
	public List<Tiezi> findTz() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		
		
        List<Tiezi> tiezis = jdbcTemplate.query("		 SELECT \r\n" + 
        		"`b`.`smallId` ,`b`.`bigsection`,`b`.`smallsection`,`b`.`title`,`b`.`name`,`b`.`time`,`b`.`tieId`,`c`.`sumpost`,`d`.`sspost`,b.`bigId`\r\n" + 
        		"FROM  \r\n" + 
        		"		((SELECT  s.`smallId` ,b.`name` AS `bigsection`,s.`name`AS`smallsection`,`t`.`title`,u.`name`,`t`.`time`,`d`.`tieId`,b.`bigId`\r\n" + 
        		"		 FROM smallsection s \r\n" + 
        		"		  LEFT JOIN (SELECT  t.`smallId`,MAX(t.`tieId`) AS `tieId` FROM tiezi t GROUP BY t.`smallId`) `d`\r\n" + 
        		"		 ON s.`smallId`=`d`.`smallId`\r\n" + 
        		"		 LEFT JOIN bigsection AS b\r\n" + 
        		"		 ON b.`bigId`= s.`bigId`\r\n" + 
        		"		 LEFT JOIN tiezi `t`\r\n" + 
        		"		 ON t.`tieId`=`d`.`tieId`\r\n" + 
        		"		 LEFT JOIN `user` u\r\n" + 
        		"		 ON u.`userId`=t.`userId`) \r\n" + 
        		"	AS `b` \r\n" + 
        		"	LEFT JOIN \r\n" + 
        		"		(SELECT s.`smallId` ,IFNULL(COUNT(t.`tieId`) ,0) AS sumpost  FROM smallsection s LEFT JOIN tiezi t  ON s.`smallId`=t.`smallId` GROUP BY s.`smallId`) \r\n" + 
        		"	AS `c` \r\n" + 
        		"	ON `b`.`smallId` = `c`.`smallId`\r\n" + 
        		"	LEFT JOIN \r\n" + 
        		"		(SELECT s.`smallId`, IFNULL(t1.sspost,0) AS sspost\r\n" + 
        		"		FROM smallsection s \r\n" + 
        		"		LEFT JOIN (SELECT t.`smallId`,COUNT(h.`huifuId`) AS sspost FROM huifu h LEFT JOIN tiezi t ON h.`tieid`=t.`tieId` LEFT JOIN smallsection s ON s.`smallId`=t.`smallId` GROUP BY t.`smallId`) AS t1\r\n" + 
        		"		ON s.`smallId`=t1.`smallId`) \r\n" + 
        		"	AS `d` \r\n" + 
        		"	ON `b`.`smallId`=`d`.`smallId`)\r\n" + 
        		"ORDER BY `b`.`smallId`"        	 
        		, new BeanPropertyRowMapper<>(Tiezi.class));
		return tiezis;
	}

	@Override
	public List<Tz> findTzBysmallId(int page,int smallId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		List<Tz> Tzs =jdbcTemplate.query("SELECT\n"+
		        "\tb.`bigId`, s.`smallId`,h.`tieid`,h.`huifuId`,`ty`.`fId`,`ty`.`name` AS `type`,`t`.`title`,u.`name` AS `userName`,DATE_FORMAT(`t`.`time`,'%Y-%m-%d') AS `tieziTime`,`a`.`sspost`,DATE_FORMAT(`h`.`time` ,'%Y-%m-%d')AS `huitieTime`,`h`.`name`\n"+
		        "FROM\n"+
		        "\t(SELECT\n"+
		        "\tt.`tieId`,h.`huifuId`,`h`.`time`,`h`.`name`\n"+
		        "\tFROM\n"+
		        "\ttiezi t\n"+
		        "\tLEFT JOIN \n"+
		        "\t((SELECT\n"+
		        "\th.`tieid`,h.`huifuId`,`h1`.`time`,`u`.`name`\n"+
		        "\tFROM\n"+
		        "\t(SELECT h.`tieid`,MAX(h.`huifuId`) AS `huifuId`\n"+
		        "\tFROM huifu h \n"+
		        "\tGROUP BY h.`tieid` ) AS `h`\n"+
		        "\tLEFT JOIN huifu AS `h1`\n"+
		        "\tON `h1`.`huifuId` = `h`.`huifuId` \n"+
		        "\tLEFT JOIN `user` u \n"+
		        "\tON u.`userId`=`h1`.`userId`)) AS `h`\n"+
		        "\tON t.`TieId`=h.`tieId`) AS `h`\n"+
		        "LEFT JOIN `tiezi` AS t \n"+
		        "ON t.`tieId` = `h`.`tieId`\n"+
		        "LEFT JOIN `user` AS `u`\n"+
		        "ON t.`userId` =u.`userId`\n"+
		        "LEFT JOIN `tiezitype` AS `ty` \n"+
		        "ON `ty`.`fId` = `t`.`fId`\n"+
		        "LEFT JOIN smallsection AS s\n"+
		        "ON s.`smallId`=t.`smallId`\n"+
		        "LEFT JOIN bigsection AS b\n"+
		        "ON b.`bigId` = s.`bigId`\n"+
		        "LEFT JOIN \n"+
		        "\t(SELECT t.`tieId`,IFNULL(t1.sspost ,0 ) AS sspost\n"+
		        "\tFROM tiezi t \n"+
		        "\tLEFT JOIN \n"+
		        "\t\t(SELECT t.`tieId`,COUNT(h.`huifuId`) AS sspost \n"+
		        "\t\tFROM  huifu h LEFT JOIN tiezi t  ON t.`tieId`=h.`tieid` \n"+
		        "\t\tGROUP BY t.`tieId`) t1 \n"+
		        "\tON t.`tieId` =t1.`tieId`) AS `a`\n"+
		        "ON `a`.`tieId` =`h`.`tieId`\n"+
		        "WHERE \n"+
		        "s.`smallId`=?\n"+
		        "ORDER BY `t`.`time`\n"+
		        "LIMIT ? ,4\n",new Object[]{smallId,page},new BeanPropertyRowMapper<>(Tz.class));
		return Tzs;
	}

	@Override
	public List<Tz> findTzSumBysmallId(int smallId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		List<Tz> Tzs =jdbcTemplate.query("SELECT\n"+
		        "\tb.`bigId`, s.`smallId`,h.`tieid`,h.`huifuId`,`ty`.`fId`,`ty`.`name` AS `type`,`t`.`title`,u.`name` AS `userName`,DATE_FORMAT(`t`.`time`,'%Y-%m-%d') AS `tieziTime`,`a`.`sspost`,DATE_FORMAT(`h`.`time` ,'%Y-%m-%d')AS `huitieTime`,`h`.`name`\n"+
		        "FROM\n"+
		        "\t(SELECT\n"+
		        "\tt.`tieId`,h.`huifuId`,`h`.`time`,`h`.`name`\n"+
		        "\tFROM\n"+
		        "\ttiezi t\n"+
		        "\tLEFT JOIN \n"+
		        "\t((SELECT\n"+
		        "\th.`tieid`,h.`huifuId`,`h1`.`time`,`u`.`name`\n"+
		        "\tFROM\n"+
		        "\t(SELECT h.`tieid`,MAX(h.`huifuId`) AS `huifuId`\n"+
		        "\tFROM huifu h \n"+
		        "\tGROUP BY h.`tieid` ) AS `h`\n"+
		        "\tLEFT JOIN huifu AS `h1`\n"+
		        "\tON `h1`.`huifuId` = `h`.`huifuId` \n"+
		        "\tLEFT JOIN `user` u \n"+
		        "\tON u.`userId`=`h1`.`userId`)) AS `h`\n"+
		        "\tON t.`TieId`=h.`tieId`) AS `h`\n"+
		        "LEFT JOIN `tiezi` AS t \n"+
		        "ON t.`tieId` = `h`.`tieId`\n"+
		        "LEFT JOIN `user` AS `u`\n"+
		        "ON t.`userId` =u.`userId`\n"+
		        "LEFT JOIN `tiezitype` AS `ty` \n"+
		        "ON `ty`.`fId` = `t`.`fId`\n"+
		        "LEFT JOIN smallsection AS s\n"+
		        "ON s.`smallId`=t.`smallId`\n"+
		        "LEFT JOIN bigsection AS b\n"+
		        "ON b.`bigId` = s.`bigId`\n"+
		        "LEFT JOIN \n"+
		        "\t(SELECT t.`tieId`,IFNULL(t1.sspost ,0 ) AS sspost\n"+
		        "\tFROM tiezi t \n"+
		        "\tLEFT JOIN \n"+
		        "\t\t(SELECT t.`tieId`,COUNT(h.`huifuId`) AS sspost \n"+
		        "\t\tFROM  huifu h LEFT JOIN tiezi t  ON t.`tieId`=h.`tieid` \n"+
		        "\t\tGROUP BY t.`tieId`) t1 \n"+
		        "\tON t.`tieId` =t1.`tieId`) AS `a`\n"+
		        "ON `a`.`tieId` =`h`.`tieId`\n"+
		        "WHERE \n"+
		        "s.`smallId`=?\n"+
		        "ORDER BY `t`.`time`\n"
		        ,new Object[]{smallId},new BeanPropertyRowMapper<>(Tz.class));
		return Tzs;
	}

	@Override
	public TieZipage findTzByTieId(int TieId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		TieZipage Tz =jdbcTemplate.queryForObject("SELECT t.`TieId`,t.`content`,u.`name`,t.`time`,t.`title`\n" +
                "FROM tiezi t\n" +
                "LEFT JOIN `user` u\n" +
                "ON t.`userId`=u.`userId`\n" +
                "WHERE t.`TieId`=?"
		        ,new Object[]{TieId},new BeanPropertyRowMapper<>(TieZipage.class));
		return Tz;
	}

	@Override
	public List<HuiTie> findhuitieByTieId(int TieId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		List<HuiTie> HT =jdbcTemplate.query("SELECT h.`tieid`,h.`content`,h.`userId`,h.`time`,u.`name`,u.`img`\n" +
				"FROM huifu h\n" +
				"LEFT JOIN `user` u\n" +
				"ON h.`userId`=u.`userId`\n" +
				"WHERE h.`tieid`=?"
		        ,new Object[]{TieId},new BeanPropertyRowMapper<>(HuiTie.class));
		return HT;
	}

	@Override
	public void insertsendtiezi(SendTiezi sendTiezi) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(DruidUtils.getDataSource());
		jdbcTemplate.update("INSERT  INTO `tiezi` (`title`,`userId`,`content`,`smallId`,`fId`)VALUE(?,?,?,?,?)"
		,sendTiezi.getTitle(),sendTiezi.getUserId(),sendTiezi.getContent(),sendTiezi.getSmallId(),sendTiezi.getfId()
				);
	}

	@Override
	public void inserthuitie(SendHuitie sendHuitie) {
		// TODO Auto-generated method stub
		JdbcTemplate jdbcTemplate =new JdbcTemplate(DruidUtils.getDataSource());
		jdbcTemplate.update("INSERT INTO `huifu` (`tieid`,`content`,`userId`)VALUE (?,?,?)"
				
		,sendHuitie.getTieid(),sendHuitie.getContent(),sendHuitie.getUserId());
		
	}
	}

	

	

	
	
