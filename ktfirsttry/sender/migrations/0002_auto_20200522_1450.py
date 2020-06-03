# Generated by Django 3.0.6 on 2020-05-22 10:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('sender', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Repeat_type',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('repeat_name', models.CharField(db_index=True, max_length=20, verbose_name='Частота повторения')),
            ],
            options={
                'verbose_name': 'Частота повторения',
                'verbose_name_plural': 'Частота повторения',
                'ordering': ['repeat_name'],
            },
        ),
        migrations.AlterModelOptions(
            name='snd',
            options={'ordering': ['dtime'], 'verbose_name': 'Информатор', 'verbose_name_plural': 'Информатор'},
        ),
        migrations.AlterField(
            model_name='snd',
            name='description',
            field=models.TextField(blank=True, null=True, verbose_name='Описание задачи'),
        ),
        migrations.AlterField(
            model_name='snd',
            name='dtime',
            field=models.DateTimeField(verbose_name='Дата\\время отправки'),
        ),
        migrations.AlterField(
            model_name='snd',
            name='mailto',
            field=models.EmailField(max_length=254, verbose_name='E-mail получателя'),
        ),
        migrations.AlterField(
            model_name='snd',
            name='text',
            field=models.TextField(verbose_name='Текст уведомления'),
        ),
        migrations.AddField(
            model_name='snd',
            name='repeat',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='sender.Repeat_type', verbose_name='Частота повторения'),
        ),
    ]