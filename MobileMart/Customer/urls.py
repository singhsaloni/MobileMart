from django.urls import path
from . import views
urlpatterns = [
    path('cuslist/',views.cuslist,name="cuslist"),
    path('cusdetail/<str:u>/',views.cusdetail,name="cusdetail"),
    path('delete_cus/<str:u>', views.delete_cus,name='delete_cus'),
]
