from django.conf.urls.static import static
from django.conf import settings
from django.contrib import admin
from django.urls import path, include

from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', include('restaurant.urls')),

    path('admin/', admin.site.urls),

    path(r'jet/', include('jet.urls', 'jet')),
    path(r'jet/dashboard/', include('jet.dashboard.urls', 'jet-dashboard')), # Django JET dashboard URLS

    path('reset_password/', auth_views.PasswordResetView.as_view(template_name="reset_password.html"), name="reset_password"),
    path('reset_password_done/', auth_views.PasswordResetDoneView.as_view(template_name="reset_password_done.html"), name="password_reset_done"),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name="reset.html"), name="password_reset_confirm"),
    path('reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(template_name="reset_password_complete.html"), name="password_reset_complete"),
]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


