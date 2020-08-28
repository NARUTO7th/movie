package com.mos.mapper;

import java.util.List;

import com.mos.entity.Schedule;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface ScheduleMapper {
	Schedule findScheduleById(long schedule_id);
	Integer addSchedule(Schedule schedule);
	Integer updateSchedule(Schedule schedule);
	Integer deleteSchedule(long schedule_id);
	Integer addScheduleRemain(long schedule_id);
	Integer delScheduleRemain(long schedule_id);
	List<Schedule> findScheduleByMovieName(String movie_name);
	List<Schedule> findOffScheduleByMovieName(String movie_name);
	List<Schedule> findScheduleByState(int schedule_state);
	List<Schedule> findAllSchedule();
	List<Schedule> findScheduleByCinemaAndMovie(@Param("cinema_id") long cinema_id, @Param("movie_id") long movie_id);
	List<Schedule> findScheduleByCinemaAndMovieAndHall(@Param("hall_id") long hall_id, @Param("cinema_id") long cinema_id, @Param("movie_id") long movie_id);
}
