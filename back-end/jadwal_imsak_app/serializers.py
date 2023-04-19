# Memanggil class Jadwal yang sudah di buat di dalam file models.py
from jadwal_imsak_app.models import Jadwal
# Memanggil serializers yang ada di module rest_framework
from rest_framework import serializers

# Membuat class JadwalSerializer
class JadwalSerializer(serializers.ModelSerializer):
    class Meta:
        # Memanggil class Jadwal yang sudah di buat di models.py
        model = Jadwal
        # menentukan field yang akan di tampilkan
        fields = ['id','tanggal','imsak','subuh',
                'terbit','duha','zuhur','asar','magrib','isya']
        