# Generated by Django 2.2.1 on 2019-06-06 20:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('booksystem', '0010_order_is_pay'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='pay_time',
            field=models.DateTimeField(null=True),
        ),
        migrations.AlterField(
            model_name='order',
            name='fetch_time',
            field=models.DateTimeField(null=True),
        ),
        migrations.AlterField(
            model_name='order',
            name='refund_time',
            field=models.DateTimeField(null=True),
        ),
    ]
