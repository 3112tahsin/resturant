from django.db import models

# Create your models here.

# Contact page models here.
class ContactAddress(models.Model):
    phone_no = models.CharField(null=True, max_length=150)
    address = models.TextField(null=True)
    email = models.CharField(null=True, max_length=100)
    logo = models.ImageField(null=True, default="avatar.svg")
    contact_information = models.CharField(null=True, max_length=250)
    background_image = models.ImageField(null=True, default="avatar.svg")
    gridlist_background = models.ImageField(null=True, default="avatar.svg")

    def __str__(self):
        return self.phone_no
    class Meta:
        verbose_name_plural = "Contact Address"
