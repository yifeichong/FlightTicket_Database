from django.contrib import admin
from .models import Flight,Order
from .forms import FlightForm, OrderForm


# 自定义表单管理
class FlightAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'leave_city', 'arrive_city', 'leave_airport', 'arrive_airport', 'leave_time', 'arrive_time', 'capacity',
        'price', 'book_sum', 'income','seat_type')
    form = FlightForm  # 在FlightForm中自定义需要在后台中输入哪些信息

class OrderAdmin(admin.ModelAdmin):
    list_display = (
        'user', 'flight', 'can_modify' ,'is_pay', 'is_fetch', 'is_refund', 'creat_time', 
       'pay_time' ,'fetch_time', 'refund_time')
    form = OrderForm  # 在FlightForm中自定义需要在后台中输入哪些信息


# Register your models here.
admin.site.register(Flight, FlightAdmin)
admin.site.register(Order, OrderAdmin)