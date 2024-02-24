from django.contrib import admin

from restaurant.models import ContactAddress

# Register your models here.
# Contact page admin here.
class AddressAdmin(admin.ModelAdmin):
    list_filter = ('phone_no',)
    search_fields = ('phone_no',)
    list_display = ('phone_no', 'address','email','logo','contact_information','background_image')

admin.site.register(ContactAddress, AddressAdmin)