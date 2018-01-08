-- 通过成交量计算奥德
select FLOOR(AVG(t.volume)) aod1 from kd_d_300349 t where t.date >= '2016-12-20' and t.date <= '2017-01-19'
UNION
select FLOOR(AVG(t.volume)) aod2 from kd_d_300349 t where t.date >= '2017-01-20' and t.date <= '2017-04-11'
UNION
select FLOOR(AVG(t.volume)) aod3 from kd_d_300349 t where t.date >= '2017-04-12' and t.date <= '2017-05-11'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_300349 t where t.date >= '2017-05-12' and t.date <= '2017-08-07'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_300349 t where t.date >= '2017-08-08' and t.date <= '2017-08-28'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_300349 t where t.date >= '2017-08-29' and t.date <= '2017-10-11'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_300349 t where t.date >= '2017-10-12' and t.date <= '2017-11-14'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_300349 t where t.date >= '2017-11-15' and t.date <= '2017-12-05'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_300349 t where t.date >= '2017-12-06' and t.date <= '2018-01-08';