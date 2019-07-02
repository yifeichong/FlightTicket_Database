from django.contrib.auth.models import Permission, User
from django.db import models


# Create your models here.
# 添加primary_key会覆盖掉默认的主键
class Flight(models.Model):
	user = models.ManyToManyField(User, default=1)  # 有了这个字段之后，默认的后台添加失效，必须要自定义Form，除去这个字段
	name = models.CharField(max_length=100)  # 班次  南方航空CZ3969
	leave_city = models.CharField(max_length=100, null=True)  # 离开城市
	arrive_city = models.CharField(max_length=100, null=True)  # 到达城市
	leave_airport = models.CharField(max_length=100, null=True)  # 离开的机场
	arrive_airport = models.CharField(max_length=100, null=True)  # 到达的机场
	leave_time = models.DateTimeField(null=True)  # DateTimeField包括了DateField信息，并且添加了时间
	arrive_time = models.DateTimeField(null=True)
	capacity = models.IntegerField(default=0, null=True)  # 经济舱座位总数
	price = models.FloatField(default=0, null=True)  # 价格
	book_sum = models.IntegerField(default=0, null=True)  # 订票总人数
	income = models.FloatField(default=0, null=True)  # 收入
	SEAT_TYPE = (
		('头等舱','头等舱'),
		('公务舱','公务舱'),
		('经济舱','经济舱')
		)
	seat_type = models.CharField(max_length=100,choices=SEAT_TYPE, default='经济舱')
	# bill = models.FloatField(default=0, null=True) #账单
	# seat_type = models.CharField(max_length, null=True)
	def __str__(self):
		return self.name

class Order(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE,)
	flight = models.ForeignKey(Flight, on_delete=models.CASCADE,)
	creat_time = models.DateTimeField(null=True, auto_now_add=True)
	pay_time = models.DateTimeField(null=True)
	fetch_time = models.DateTimeField(null=True)
	refund_time = models.DateTimeField(null=True)
	# is_pay = models.BooleanField(default=False)
	is_pay = models.BooleanField(default=False)
	is_fetch = models.BooleanField(default=False)
	is_refund = models.BooleanField(default=False)
	can_modify = models.BooleanField(default=True)
	def __str__(self):
		return self.user.username+self.flight.name

# class Bill(models.Model):
#     user = models.ForeignKey(User, on_delete=models.CASCADE,)
#     flight = models.ForeignKey(Flight, on_delete=models.CASCADE,)
#     order = models.ForeignKey(Order, on_delete=models.CASCADE,)    