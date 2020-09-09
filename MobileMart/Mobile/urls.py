from django.urls import path
from . import views
urlpatterns = [
    path('addcom/',views.addcom,name="addcom"),
    path('comlist/',views.comlist,name="comlist"),
    path('addmob/',views.addmob,name="addmob"),
    path('moblist/',views.moblist,name="moblist"),
    path('mobdet/<int:id>/',views.mobdet,name="mobdet"),
    path('filmob/',views.filmob,name="filmob"),
    path('cfilmob/',views.cfilmob,name="cfilmob"),
    path('delete_mobile/<int:id>', views.delete_mobile,name='delete_mobile'),
	path('delete_com/<int:id>', views.delete_com,name='delete_com'),
    path('addcart/<int:id>/',views.addcart,name="addcart"),
    path('cartrem/<int:id>/',views.cartrem,name="cartrem"),
    path('viewcart/',views.viewcart,name="viewcart"),  
]
