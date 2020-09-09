from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.contrib.auth import views as auth_views

from .tokens import user_tokenizer

urlpatterns = [
path('login/',views.loginview,name="login"),
path('signup/',views.signup,name="signup"),
path('addcus/',views.addcus,name="addcus"),
path('contact/',views.contact,name="contact"),
path('about/',views.about,name="about"),
path('signupcat/',views.signupcat,name="signupcat"),
path('signupcom/',views.signupcom,name="signupcom"),
path('editpro/',views.editpro,name="editpro"),
path('logout/',views.logoutview,name="logout"),
path('userpic/',views.userpic,name="userpic"),
path('sent/', views.activation_sent_view, name="activation_sent"),
path('activate/<slug:uidb64>/<slug:token>/', views.activate, name='activate'),
path('activatecom/<slug:uidb64>/<slug:token>/', views.activatecom, name='activatecom'),
path('activatecus/<slug:uidb64>/<slug:token>/', views.activatecus, name='activatecus'),
path(
    'reset-password/',
    auth_views.PasswordResetView.as_view(
      template_name='Accounts/reset_pass_sent.html',
      html_email_template_name='Accounts/reset_password_email.html',
      success_url=settings.LOGIN_URL,
      token_generator=user_tokenizer),
    name='reset_password'
  ),
path(
    'reset-password-confirmation/<str:uidb64>/<str:token>/',
    auth_views.PasswordResetConfirmView.as_view(
      template_name='Accounts/reset_password_update.html', 
      post_reset_login=True,
      post_reset_login_backend='django.contrib.auth.backends.ModelBackend',
      token_generator=user_tokenizer,
      success_url=settings.LOGIN_REDIRECT_URL),
    name='password_reset_confirm'
  ),
]

