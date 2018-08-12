# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-08-12 21:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('photo_url', models.FileField(blank=True, null=True, upload_to='shopShirts/')),
                ('price', models.DecimalField(blank=True, decimal_places=2, max_digits=5)),
                ('quantity', models.PositiveSmallIntegerField(default=0)),
                ('available', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
