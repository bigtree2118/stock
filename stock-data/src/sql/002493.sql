-- 通过成交量计算奥德
select FLOOR(AVG(t.volume)) aod1 from kd_d_002493 t where t.date >= '2017-01-10' and t.date <= '2017-01-19'
UNION
select FLOOR(AVG(t.volume)) aod2 from kd_d_002493 t where t.date >= '2017-01-20' and t.date <= '2017-02-28'
UNION
select FLOOR(AVG(t.volume)) aod3 from kd_d_002493 t where t.date >= '2017-03-01' and t.date <= '2017-05-05'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002493 t where t.date >= '2017-05-06' and t.date <= '2017-07-24'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002493 t where t.date >= '2017-07-25' and t.date <= '2017-08-24'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002493 t where t.date >= '2017-08-25' and t.date <= '2017-11-10'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002493 t where t.date >= '2017-11-11' and t.date <= '2017-11-29'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002493 t where t.date >= '2017-11-30' and t.date <= '2017-12-07'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_002493 t where t.date >= '2017-12-08' and t.date <= '2018-01-08';
