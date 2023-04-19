from django.db import models

# Create your models here.

'''
Membuat class Jadwal, dimana ini akan masuk kedalam database
sebagai nama field
'''
class Jadwal(models.Model):
    tanggal = models.CharField(max_length=50, null=False, blank=False)
    imsak   = models.TimeField(null=False, blank=False)
    subuh   = models.TimeField(null=False, blank=False)
    terbit  = models.TimeField(null=False, blank=False)
    duha    = models.TimeField(null=False, blank=False)
    zuhur   = models.TimeField(null=False, blank=False)
    asar    = models.TimeField(null=False, blank=False)
    magrib  = models.TimeField(null=False, blank=False)
    isya    = models.TimeField(null=False, blank=False)

    # Menentukan nama tabel di database
    class Meta:
        db_table = 'jadwal'
    
    # menentukan field yang akan tampil di dalam tabel jadwal pada admin django
    def __str__(self):
        return self.tanggal
