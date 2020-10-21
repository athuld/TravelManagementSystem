# Generated by Django 3.1.2 on 2020-10-21 19:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('package', '0020_auto_20201021_0831'),
    ]

    operations = [
        migrations.CreateModel(
            name='Feedback',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('subject', models.CharField(max_length=200)),
                ('message', models.TextField()),
                ('rating', models.IntegerField()),
            ],
        ),
    ]
