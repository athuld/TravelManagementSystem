# Generated by Django 3.1.2 on 2020-10-14 15:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('package', '0002_auto_20201014_1545'),
    ]

    operations = [
        migrations.AlterField(
            model_name='destination',
            name='img',
            field=models.ImageField(height_field='480', upload_to='imgs', width_field='720'),
        ),
    ]