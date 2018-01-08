-- 通过成交量计算奥德
select FLOOR(AVG(t.volume)) aod1 from kd_d_002218 t where t.date >= '2017-01-17' and t.date <= '2017-03-23'
UNION
select FLOOR(AVG(t.volume)) aod2 from kd_d_002218 t where t.date >= '2017-03-24' and t.date <= '2017-05-11'
UNION
select FLOOR(AVG(t.volume)) aod3 from kd_d_002218 t where t.date >= '2017-05-12' and t.date <= '2017-06-07'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002218 t where t.date >= '2017-06-08' and t.date <= '2017-07-18'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002218 t where t.date >= '2017-07-19' and t.date <= '2017-09-21'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002218 t where t.date >= '2017-09-22' and t.date <= '2017-11-03'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002218 t where t.date >= '2017-11-04' and t.date <= '2018-01-08';
