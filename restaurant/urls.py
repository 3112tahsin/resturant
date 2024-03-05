from django.urls import path
from restaurant import views


urlpatterns = [
    path('', views.home, name="home"),

    path('about/', views.about, name="about"),
    path('blog/<int:pk>/', views.blog, name='blog'),
    path('contact/', views.contact, name="contact"),
    path('dashboard/', views.dashboard, name="dashboard"),
    
    path('menu/', views.menu, name="menu"),
    path('shop/', views.shop, name="shop"),
    path('shop-details/<int:shop_id>/', views.shopdetails, name="shop-details"),
    path('shopping-cart/', views.shoppingcart, name="shopping-cart"),

    path('search/', views.search, name="search"),
    path('reservation/', views.reservation, name="reservation"),
    path('login-page/', views.loginpage, name="login-page"),
    path('logout/', views.logoutUser, name="logout"),
    path('register/', views.register, name="register"),

    path('thank-you/', views.thankyou, name="thank-you"),
    path('404/', views.error404, name="error404"),
    
]
