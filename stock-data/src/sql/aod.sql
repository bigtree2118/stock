
select FLOOR(AVG(t.volume)) aod1 from tick_data t where t.date >= '2017-10-16' and t.date <= '2017-11-01'
UNION
select FLOOR(AVG(t.volume)) aod2 from tick_data t where t.date >= '2017-11-02' and t.date <= '2017-11-07'
UNION
select FLOOR(AVG(t.volume)) aod3 from tick_data t where t.date >= '2017-11-08' and t.date <= '2017-12-04'
UNION
select FLOOR(AVG(t.volume)) aod4 from tick_data t where t.date >= '2017-12-05' and t.date <= '2017-12-19';



select FLOOR(AVG(t.turnover * 10000)) aod1 from tick_data t where t.date >= '2017-10-16' and t.date <= '2017-11-01'
UNION
select FLOOR(AVG(t.turnover * 10000)) aod2 from tick_data t where t.date >= '2017-11-02' and t.date <= '2017-11-07'
UNION
select FLOOR(AVG(t.turnover * 10000)) aod3 from tick_data t where t.date >= '2017-11-08' and t.date <= '2017-12-04'
UNION
select FLOOR(AVG(t.turnover * 10000)) aod4 from tick_data t where t.date >= '2017-12-05' and t.date <= '2017-12-19';