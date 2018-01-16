import tushare as ts
import pandas as pd

from sqlalchemy import create_engine
from sqlalchemy.types import VARCHAR

import pymysql
pymysql.install_as_MySQLdb()

# 创建数据连接
conn = create_engine('mysql+mysqldb://root:111111@localhost:3306/stock?charset=utf8')

# 股票代码列表
stock_list = ['002218', '600206', '300349', '002493', '600600', '600667', '603225', '600508', '000729', '002079', '000633']

# 定义get_k_data接口返回数据的字段类型
k_data_dtype = {
    'date': VARCHAR(64),
    'code': VARCHAR(64)
}

# 查询参数
start_date = '2018-01-09'


# 循环获取股票日K线数据
for stock in stock_list:
    df = ts.get_k_data(code=stock, ktype='D', autype='qfq', start=start_date)
    table = 'kd_d_' + stock
    pd.io.sql.to_sql(frame=df, name=table, con=conn, if_exists='append', dtype=k_data_dtype)