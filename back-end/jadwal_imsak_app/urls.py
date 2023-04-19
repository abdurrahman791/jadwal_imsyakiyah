from django.urls import path
# memanggil semua fungsi(def) yang ada file views.py
from jadwal_imsak_app import views

urlpatterns = [
    path('jadwal_imsak/', views.jadwal_imsak),
    path('jadwal_imsak/<int:id>', views.detail_jadwal_imsak),
]