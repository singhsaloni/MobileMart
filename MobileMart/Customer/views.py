from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm
from django.db import connection
from django.contrib.auth.models import User

def cuslist(request):
	query=connection.cursor()
	query.execute("select username,first_name,last_name,email,mobile,aadhar,address from auth_user where is_superuser='0'")
	s=query.fetchall()
	return render(request,"Customer/cuslist.html",{'data':s})

def cusdetail(request,u):
	query=connection.cursor()
	query.execute(f"select username,first_name,last_name,email,mobile,aadhar,address,pic from auth_user where username='{u}'")
	s=query.fetchone()
	return render(request,"Customer/cusdetail.html",{'data':s})	

def delete_cus(request,u):
	User.objects.filter(username=u).delete()
	return redirect('home')