# Generated by Django 4.0.5 on 2022-07-17 01:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_alter_plant_planted_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='plant',
            name='planted_date',
            field=models.DateTimeField(),
        ),
    ]
