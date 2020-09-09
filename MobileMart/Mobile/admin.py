from django.contrib import admin

from django.contrib.admin.models import LogEntry

LogEntry.objects.all().delete()
