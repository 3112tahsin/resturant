from django.forms import ModelForm, ValidationError
from django import forms
from django.contrib.auth.forms import UserCreationForm
from restaurant.models import CommentBlog, CommentDish, Contact_Us, Reservation, User


class RegistrationForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']

class ContactForm(ModelForm):
    class Meta:
        model = Contact_Us
        fields = ['name', 'email','phone', 'messages']

class ReservationForm(ModelForm):
    class Meta:
        model = Reservation
        fields = ['name', 'email','phone', 'reservation_date', 'reservation_time', 'total_person']

class CommentForm(forms.ModelForm):
    class Meta:
        model = CommentBlog
        fields = ['name', 'email', 'body']


class ReviewsForm(forms.ModelForm):
    rating = forms.IntegerField(min_value=1, max_value=5, label="Rating")
    
    class Meta:
        model = CommentDish
        fields = ['name', 'email', 'body']