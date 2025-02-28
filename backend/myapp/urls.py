from rest_framework.routers import DefaultRouter
from django.urls import path, include
from .views import *


router = DefaultRouter()
router.register(r'products', ProductViewSet, basename='product') 
router.register(r'sales', SaleViewSet)
router.register(r'bulk-sales', BulkSaleViewSet, basename='bulk-sale')
router.register(r'stock', StockViewSet, basename='stock')


urlpatterns = [
    path('', include(router.urls)),
    path('login/', login_view, name='login'), 
    path('logout/', logout_view, name='logout'),
   
]
