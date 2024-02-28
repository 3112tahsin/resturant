import time
from django.db import models
from django.utils import timezone

# Create your models here.


# Contact Page models here...
class contact_Address(models.Model):
    primary_phone_no = models.CharField(null=True, max_length=20)
    phone_no = models.CharField(max_length=20, blank=True)
    primary_email = models.EmailField(null=True, max_length=62)
    email = models.EmailField(max_length=62, blank=True)
    address = models.TextField(null=True)
    top_title = models.CharField(max_length=255, null=True)
    logo = models.ImageField(null=True, default="avatar.svg")
    google_map = models.TextField(max_length=500, null=True)
    
    def __str__(self):
        return self.primary_phone_no
    
    class Meta:
        verbose_name_plural = "Contact Address & Logo"

class Contact_Us(models.Model):
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(null=True)
    phone = models.CharField(null=True, max_length=15)
    messages = models.TextField(null=True)
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)
    
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = "Contact Us"

# Testmonial models here...
class Testimonial(models.Model):
    clint_name = models.CharField(null=True, max_length=30)
    messages = models.TextField(null=True)

    def __str__(self):
        return self.clint_name
    
    class Meta:
        verbose_name_plural = "Testimonial / Review"

# Open Houres models here...
class Openhoure(models.Model):
    day = models.CharField(null=True, max_length=30)
    start_time = models.TimeField(null=True)
    end_time = models.TimeField(null=True)

    def __str__(self):
        return self.day
    
    class Meta:
        verbose_name_plural = "Open Time Schedule"
        

# About Page models here...
class About(models.Model):
    title = models.CharField(null=True, max_length=30)
    detailes = models.CharField(null=True, max_length=250)
    full_detailes = models.TextField(null=True)
    slider_image = models.ImageField(null=True, default="avatar.svg")
   

    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "About & sliders"

# About Page Fun-Factor models here...
class FunFactor(models.Model):
    title = models.CharField(null=True, max_length=30)
    values = models.CharField(null=True, max_length=15)
    icone = models.CharField(null=True,max_length=15)
   
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "About Fun-Factor"

# About Page Choose Us models here...
class ChooseUs(models.Model):
    chooseUs_title = models.TextField(null=True)
    choose_image = models.ImageField(null=True, default="avatar.svg")
    chef_title = models.CharField(null=True, max_length=255)
    total_tables = models.CharField(null=True, max_length=15)
    tables_detailes = models.CharField(null=True, max_length=255)
    clean_detailes = models.CharField(null=True, max_length=255)
    our_chefs_title = models.CharField(null=True, max_length=255)
   
    def __str__(self):
        return self.chooseUs_title
    
    class Meta:
        verbose_name_plural = "Choose Us"

# Team Members models start  here...
class teamMembers(models.Model):
    name = models.CharField(null=True, max_length=31)
    picture = models.ImageField(null=True, default="avatar.svg")
    sort_details= models.TextField(null=True,max_length=255)
    facebook_link = models.CharField(default='Write..', max_length=127)
    twitter_link = models.CharField(default='Write..', max_length=127)
    google_link = models.CharField(default='Write..', max_length=127)
    instagram_link = models.CharField(default='Write..', max_length=127)
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "Team Members List"


# Blog Page models here...
class blogList(models.Model):
    blog_title = models.CharField(null=True, max_length=127)
    blog_image = models.ImageField(null=True, default="avatar.svg")
    date = models.DateField()
    home_image = models.ImageField(null=True, default="avatar.svg")
    top_image = models.ImageField(null=True, default="avatar.svg")
    top_details = models.TextField(null=True)
    details2 = models.TextField(null=True)
    banner_details = models.TextField(null=True)
    buttom_details = models.TextField(null=True)
   
    def __str__(self):
        return self.blog_title
    
    class Meta:
        verbose_name_plural = "Blog List"

# Reservation
class Reservation(models.Model):
    name = models.CharField(max_length=63, null=True)
    email = models.EmailField(null=True)
    phone = models.CharField(null=True, max_length=15)
    reservation_date = models.DateField(null=True)
    reservation_time = models.TimeField(null=True)
    total_person = models.CharField(null=True, max_length=15)
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)
    
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = "Reservation Clint"