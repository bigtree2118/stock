-- 通过成交量计算奥德
select FLOOR(AVG(t.volume)) aod1 from kd_d_000633 t where t.date >= '2016-10-14' and t.date <= '2016-12-12'
UNION
select FLOOR(AVG(t.volume)) aod2 from kd_d_000633 t where t.date >= '2016-12-13' and t.date <= '2017-12-19'
UNION
select FLOOR(AVG(t.volume)) aod3 from kd_d_000633 t where t.date >= '2016-12-19' and t.date <= '2017-03-07'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-03-08' and t.date <= '2017-06-01'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-06-02' and t.date <= '2017-07-04'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-09-28' and t.date <= '2017-10-09'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-10-10' and t.date <= '2017-10-12'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-10-13' and t.date <= '2017-10-19'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-10-20' and t.date <= '2017-10-24'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-10-25' and t.date <= '2017-10-27'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-10-30' and t.date <= '2017-11-06'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-11-07' and t.date <= '2017-11-27'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-11-28' and t.date <= '2017-12-15'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2017-12-16' and t.date <= '2018-01-02'
UNION
select FLOOR(AVG(t.volume)) aod4 from kd_d_000633 t where t.date >= '2018-01-03' and t.date <= '2018-01-08';
