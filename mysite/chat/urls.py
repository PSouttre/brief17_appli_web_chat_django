from django.urls import path
from django.contrib.auth.views import LoginView, LogoutView

from . import views


urlpatterns = [
    path("", views.index, name="index"),
    path("login/", LoginView.as_view (
        template_name="chat/loginpage.html",
        redirect_authenticated_user=True,
        next_page="index"
    ),
    name="login-user"),
    path("logout/", LogoutView.as_view(next_page='login-user'), name="logout-user"),
    path('register/', views.register, name='register-user'),
    path("<str:room_name>/", views.room, name="room"),
]