-- 通过成交量计算奥德
select FLOOR(AVG(t.volume)) aod1 from kd_d_600206 t where t.date >= '2016-11-14' and t.date <= '2016-12-14'
UNION
select FLOOR(AVG(t.volume)) aod2 from kd_d_600206 t where t.date >= '2016-12-15' and t.date <= '2017-04-13'
UNION
select FLOOR(AVG(t.volume)) aod3 from kd_d_600206 t where t.date >= '2017-04-14' and t.date <= '2017-06-05'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-06-06' and t.date <= '2017-08-10'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-08-11' and t.date <= '2017-08-24'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-08-25' and t.date <= '2017-09-29'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-10-09' and t.date <= '2017-10-30'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-10-31' and t.date <= '2017-11-13'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-11-14' and t.date <= '2017-11-17'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-11-20' and t.date <= '2017-12-13'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-12-14' and t.date <= '2017-12-27'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600206 t where t.date >= '2017-12-28' and t.date <= '2018-01-08';
