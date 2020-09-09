from django.urls import path
from . import views
urlpatterns = [
    path('addpay/',views.addpay,name="addpay"), 
    path('transactions/',views.transactions,name="transactions"),
    path('searchbill/',views.searchbill,name="searchbill"),
    path('billdet/<int:id>/',views.billdet,name="billdet"),
    path('delete_bill/<int:id>', views.delete_bill,name='delete_bill'),
]
