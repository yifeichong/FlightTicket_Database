# Generated by Django 2.2.1 on 2019-06-06 10:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('booksystem', '0006_auto_20190606_0909'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='creat_time',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='order',
            name='fetch_time',
            field=models.DateTimeField(auto_now=True, null=True),
        ),
        migrations.AddField(
            model_name='order',
            name='refund_time',
            field=models.DateTimeField(auto_now=True, null=True),
        ),
    ]
