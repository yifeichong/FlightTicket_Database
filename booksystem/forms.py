from django import forms
from django.contrib.auth.models import User
from .models import Flight,Order


class PassengerInfoForm(forms.Form):
    leave_city = forms.CharField(label='leave_city', max_length=100)
    arrive_city = forms.CharField(label='arrive_city', max_length=100)
    leave_date = forms.DateField(label='leave_date')


# 自定义Flight对象的输入信息
class FlightForm(forms.ModelForm):
    class Meta:
        model = Flight
        exclude = ['user']  # user信息不能从后台输入

# 自定义Order对象的输入信息
class OrderForm(forms.ModelForm):
    class Meta:
        model = Order
        exclude = []  # user信息不能从后台输入

# 用户需要输入的字段
class UserForm(forms.ModelForm):
    # username = forms.CharField(
    #     min_length=6,
    #     label="username",
    #     error_messages={
    #         "required": "不能为空",
    #         "invalid": "格式错误",
    #         "min_length": "用户名最短6位"
    #     }
    # )
    password = forms.CharField(
        widget=forms.PasswordInput,
        min_length=6,
        label="password",
        error_messages={
            "required": "不能为空",
            "invalid": "格式错误",
            "min_length": "密码最短6位"
        }
    )
    # ID = forms.CharField(
    #     )
    class Meta:
        model = User
        fields = ['username', 'email', 'password']

# class UserForm(forms.Form):
#     username = forms.CharField(
#         min_length=8,
#         label="用户名",
#         initial="张三",
#         error_messages={
#             "required": "不能为空",
#             "invalid": "格式错误",
#             "min_length": "用户名最短8位"
#         }
#     )
#     pwd = forms.CharField(min_length=6, label="密码")