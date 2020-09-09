from django.shortcuts import render,redirect
from random import randint
from django.db import connection
from django.contrib import messages
from Mobile.models import Bill

def addpay(request):
	if request.method=="POST":
		card=request.POST['card']
		hold=request.POST['hold']
		date=request.POST['date']
		month=request.POST['month']
		cvv=request.POST['cvv']
		user=request.user.username
		print(user)
		ra=randint(1000000000,9999999999)
		cart=request.session.get('cart',{})
		total=0
		count=0
		for i in cart:
			d=cart[i]
			c=connection.cursor()
			total+=float(d[2])
			count+=1
			c.execute(f"insert into bill values('{user}','{d[11]}','{d[0]}','{d[1]}','{d[2]}','{d[9]}','{card}','{hold}','{date}','{month}','{cvv}','{ra}')")
		messages.success(request,f"Your Payment of {total} for {count} mobiles is completed..")
		return redirect('home')

	return render(request,'Bill/adddpay.html')

def billdet(request,id):
	c=connection.cursor()
	c.execute(f"select user,id,mobile,model,price,pic,card,hold,date,month,cvv from bill where id='{id}'")
	r=c.fetchone()
	return render(request,"Bill/billdet.html",{'data':r})

def delete_bill(request,id):
	Bill.objects.filter(id=id).delete()
	return redirect('home')

def searchbill(request):
	c=connection.cursor()
	r=f"select * from bill"
	if request.method=="POST":
		user=request.POST['user']
		mobile=request.POST['mobile']
		model=request.POST['model']
		date=request.POST['date']
		if date:
			r=f"select * from bill where date like '%{date}%'"
		if user:
			r=f"select * from bill where date like '%{date}%' and user like '%{user}%'"
		else:
			r=f"select * from bill where mobile like '%{mobile}%' and model like '%{model}%'"
	c.execute(r)
	d=c.fetchall()
	return render(request,"Bill/searchbill.html",{'data':d})	

def transactions(request):
	c=connection.cursor()
	c.execute(f"select * from bill")
	r=c.fetchall()
	return render(request,"Bill/transactions.html",{'data':r})

