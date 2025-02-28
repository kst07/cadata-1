from rest_framework import serializers
from .models import *
from django.contrib.auth.models import User
from django.utils.timezone import localtime
from django.utils import timezone
from django.conf import settings

class LoginSerializer(serializers.Serializer):
    username = serializers.CharField()
    password = serializers.CharField(write_only=True)  # ไม่ให้แสดง password กลับไป

    def validate(self, data):
        username = data.get("username")
        password = data.get("password")

        if not username or not password:
            raise serializers.ValidationError("Username and password are required")

        return data

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ["id", "username"]

    
class ProductSerializer(serializers.ModelSerializer):
    type_display = serializers.CharField(source='get_type_display', read_only=True)
    
    class Meta:
        model = Product
        fields = ['id', 'name', 'category', 'type', 'type_display', 'image', 'price', 'stock']


class SaleSerializer(serializers.ModelSerializer):
    product = ProductSerializer(read_only=True)
    product_id = serializers.IntegerField(write_only=True)
    name = serializers.CharField(source='product.name', read_only=True)
    category = serializers.CharField(source='product.get_category_display', read_only=True)
    type = serializers.CharField(source='product.get_type_display', read_only=True)
    sale_date = serializers.SerializerMethodField()

    class Meta:
        model = Sale
        fields = ['id', 'product', 'product_id', 'quantity', 'total_price', 'sale_date', 'name', 'category', 'type']

    def get_sale_date(self, obj):
        if obj.sale_date is None:
            return None

        if settings.USE_TZ and timezone.is_naive(obj.sale_date):
            aware_time = timezone.make_aware(obj.sale_date, timezone.get_current_timezone())
        else:
            aware_time = obj.sale_date  

        return aware_time.strftime("%Y-%m-%d %H:%M:%S")

    def create(self, validated_data):
        # ไม่ต้องลด stock ในส่วนนี้
        return super().create(validated_data)

class BulkSaleSerializer(serializers.Serializer):
    sales = SaleSerializer(many=True)

    def create(self, validated_data):
        sales_data = validated_data.pop('sales')
        sales = []
        for sale_data in sales_data:
            product = Product.objects.get(id=sale_data['product_id'])
            if product.stock < sale_data['quantity']:
                raise serializers.ValidationError({"error": f"Not enough stock available for product {product.name}"})
            product.stock -= sale_data['quantity']
            product.save()
            sale = Sale.objects.create(**sale_data)
            sales.append(sale)
        return sales

