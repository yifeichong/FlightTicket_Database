# income List 的 数据类型
class IncomeMetric:
    metric = '00'  # 时间段度量标准
    flight_sum = 0
    income = 0

    def __init__(self, metric, flight_sum, income):
        self.metric = metric
        self.flight_sum = flight_sum
        self.income = income


# 订单信息
class Order:
    passenger_name = ''
    create_time = ''
    flight_name = ''
    flight_route = ''
    flight_ltime = ''
    flight_price = ''
    is_pay = ''
    is_fetch = ''
    is_refund = ''

    def __init__(self, pname, create_time, fname, froute, fltime, fprice, is_pay, is_fetch, is_refund):
        self.passenger_name = pname
        self.create_time = create_time
        self.flight_name = fname
        self.flight_route = froute
        self.flight_ltime = fltime
        self.flight_price = fprice
        self.is_pay = is_pay
        self.is_fetch = is_fetch
        self.is_refund = is_refund
