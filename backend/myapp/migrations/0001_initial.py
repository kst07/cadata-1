# Generated by Django 5.1.6 on 2025-02-17 16:41

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('image', models.URLField(blank=True, max_length=5000, null=True)),
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=100, unique=True)),
                ('category', models.CharField(choices=[('coffee', 'กาแฟ'), ('chocolate', 'ช็อคโกแลต'), ('cocoa', 'โกโก้'), ('tea', 'ชา'), ('milk', 'นม'), ('bakery', 'ขนม')], max_length=10)),
                ('price', models.DecimalField(decimal_places=2, max_digits=6)),
                ('stock', models.PositiveIntegerField(default=0)),
            ],
        ),
    ]
