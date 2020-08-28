package com.mos.mapper;

import java.util.List;

import com.mos.entity.Hall;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface HallMapper {
	Hall findHallById(long hall_id);
	Hall findHallByCinemaAndHallName(@Param("cinema_name") String cinema_name, @Param("hall_name") String hall_name);
	Integer addHall(Hall hall);
	Integer updateHall(Hall hall);
	Integer deleteHall(long hall_id);
	List<Hall> findHallByCinemaId(long cinema_id);
	List<Hall> findAllHalls();
	
}
