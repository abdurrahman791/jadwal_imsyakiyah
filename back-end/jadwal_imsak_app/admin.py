from django.contrib import admin
# Memanggil class Jadwal yang sudah di buat di dalam file models.py
from .models import Jadwal

# mendaftarkan class Jadwal, supaya muncul di admin django
admin.site.register(Jadwal)