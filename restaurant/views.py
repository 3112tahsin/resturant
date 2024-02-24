from django.shortcuts import render

# Create your views here.


# Home page views here.
def home(request):
   
    context = {
       
    }
    return render(request, 'base/home.html', context)


# 404 page views here.
def error404(request):
   
    context = {
       
    }
    return render(request, 'base/404.html', context)

# About page views here.
def about(request):
   
    context = {
       
    }
    return render(request, 'base/about.html', context)

# Blog page views here.
def blog(request):
   
    context = {
       
    }
    return render(request, 'base/blog.html', context)

# Contact page views here.
def contact(request):
   
    context = {
       
    }
    return render(request, 'base/contact.html', context)


# Contact page views here.
def dashboard(request):
   
    context = {
       
    }
    return render(request, 'base/dashboard.html', context)

# Contact page views here.
def login(request):
   
    context = {
       
    }
    return render(request, 'base/login.html', context)

# Menu page views here.
def menu(request):
   
    context = {
       
    }
    return render(request, 'base/menu.html', context)


# Register page views here.
def register(request):
   
    context = {
       
    }
    return render(request, 'base/register.html', context)

# Reservation page views here.
def reservation(request):
   
    context = {
       
    }
    return render(request, 'base/reservation.html', context)

# Search page views here.
def search(request):
   
    context = {
       
    }
    return render(request, 'base/search.html', context)

# Shop page views here.
def shop(request):
   
    context = {
       
    }
    return render(request, 'base/shop.html', context)

# Shop-details page views here.
def shopdetails(request):
   
    context = {
       
    }
    return render(request, 'base/shop-details.html', context)

# Shopping-cart page views here.
def shoppingcart(request):
   
    context = {
       
    }
    return render(request, 'base/shopping-cart.html', context)

# Shopping-cart page views here.
def thankyou(request):
   
    context = {
       
    }
    return render(request, 'base/thank-you.html', context)

