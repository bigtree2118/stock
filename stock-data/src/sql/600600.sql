-- 通过成交量计算奥德
select FLOOR(AVG(t.volume)) aod1 from kd_d_600600 t where t.date >= '2016-10-14' and t.date <= '2016-12-21'
UNION
select FLOOR(AVG(t.volume)) aod2 from kd_d_600600 t where t.date >= '2016-12-22' and t.date <= '2017-02-09'
UNION
select FLOOR(AVG(t.volume)) aod3 from kd_d_600600 t where t.date >= '2017-02-10' and t.date <= '2017-05-19'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-05-20' and t.date <= '2017-06-30'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-07-01' and t.date <= '2017-09-26'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-09-27' and t.date <= '2017-11-10'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-11-11' and t.date <= '2017-11-30'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-12-01' and t.date <= '2017-12-25'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-12-26' and t.date <= '2018-01-03'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-01-04' and t.date <= '2018-01-07'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_600600 t where t.date >= '2017-01-08' and t.date <= '2018-01-08';
