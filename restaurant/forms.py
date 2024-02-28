from django.forms import ModelForm, ValidationError
from django import forms
from django.contrib.auth.forms import UserCreationForm
from restaurant.models import Contact_Us, Reservation

class ContactForm(ModelForm):
    class Meta:
        model = Contact_Us
        fields = ['name', 'email','phone', 'messages']

class ReservationForm(ModelForm):
    class Meta:
        model = Reservation
        fields = ['name', 'email','phone', 'reservation_date', 'reservation_time', 'total_person']