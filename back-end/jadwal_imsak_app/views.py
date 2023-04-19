from django.shortcuts import render

# Memanggil class Jadwal yang sudah di buat dalam file models.py
from jadwal_imsak_app.models import Jadwal
# Memanggil JadwalSerializer yang sudah di buat dalam file serializers.py
from jadwal_imsak_app.serializers import JadwalSerializer
# Memanggil api_view yang ada di module rest_framework.decorators
from rest_framework.decorators import api_view
# Memanggil Response yang ada di module rest_framework.response
from rest_framework.response import Response
# Memanggil status yang ada di module rest_framework
from rest_framework import status

# Create your views here.

# Mengambil daftar method GET dan POST
@api_view(['GET','POST'])
# Membuat fungsi dengan nama jadwal_imsak
def jadwal_imsak(request):

    # menampilkan semua data
    if request.method == 'GET':
        jadwal = Jadwal.objects.all()
        serializer =JadwalSerializer(jadwal, many = True)
        return Response(serializer.data) 
    
    # menambahkan data
    if request.method == 'POST':
        serializer = JadwalSerializer(data = request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status = status.HTTP_201_CREATED)

# Mengambil daftar method GET, PUT dan DELETE
@api_view(['GET','PUT', 'DELETE'])
# Membuat fungsi dengan nama detail_jadwal_imsak
def detail_jadwal_imsak(request,id):

    # Membuat percobaan
    try :
        # Memanggil data sesuai id
        jadwal = Jadwal.objects.get(pk = id)
    # Jika data tidak tersedia
    except Jadwal.DoesNotExist:
        # kembalikan response berikut
        return Response(status = status.HTTP_404_NOT_FOUND)

    #menampilkan data sesuai id
    if request.method == 'GET':
        serializer = JadwalSerializer(jadwal)
        return Response(serializer.data)

    # Edit data sesuai id
    elif request.method == 'PUT':
        serializer = JadwalSerializer(jadwal, data = request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status = status.HTTP_404_BAD_FOUND)

    # Hapus data sesuai id
    elif request.method == 'DELETE':
        jadwal.delete()
        return Response(status = status.HTTP_204_NO_CONTENT)
    
