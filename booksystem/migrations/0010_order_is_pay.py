# Generated by Django 2.2.1 on 2019-06-06 17:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('booksystem', '0009_auto_20190606_1151'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='is_pay',
            field=models.BooleanField(default=False),
        ),
    ]
