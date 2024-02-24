from django.urls import path
from restaurant import views


urlpatterns = [
    path('', views.home, name="home"),

    path('404/', views.error404, name="error404"),
    path('about/', views.about, name="about"),
    path('blog/', views.blog, name="blog"),
    path('contact/', views.contact, name="contact"),
    path('dashboard/', views.dashboard, name="dashboard"),
    path('login/', views.login, name="login"),
    path('menu/', views.menu, name="menu"),
    path('register/', views.register, name="register"),
    path('reservation/', views.reservation, name="reservation"),
    path('search/', views.search, name="search"),
    path('shop/', views.shop, name="shop"),
    path('shop-details/', views.shopdetails, name="shop-details"),
    path('shopping-cart/', views.shoppingcart, name="shopping-cart"),
    path('thank-you/', views.thankyou, name="thank-you"),
    
]
