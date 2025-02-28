from django.contrib.auth import authenticate, logout
from django.db import transaction
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework import status, generics
from rest_framework.permissions import IsAuthenticatedOrReadOnly, IsAdminUser
from rest_framework.authentication import TokenAuthentication
from rest_framework.exceptions import ValidationError
from .serializers import *
from .models import *
from django.core.exceptions import ValidationError
from rest_framework import serializers
from knox.models import AuthToken
from rest_framework import viewsets, serializers, permissions
from django.utils.timezone import now
from django.utils import timezone


@api_view(['POST'])
def login_view(request):
    serializer = LoginSerializer(data=request.data)

    if not serializer.is_valid():
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    username = serializer.validated_data["username"]
    password = serializer.validated_data["password"]

    user = authenticate(username=username, password=password)

    if user is None:
        return Response({"error": "Invalid username or password"}, status=status.HTTP_400_BAD_REQUEST)

    _, token = AuthToken.objects.create(user)

    return Response({
        "token": token,
        "user": UserSerializer(user).data
    }, status=status.HTTP_200_OK)



@api_view(['POST'])
def logout_view(request):
    token = request.data.get("token")
    if not token:
        return Response({"error": "Token is required"}, status=status.HTTP_400_BAD_REQUEST)

    try:
        auth_token = AuthToken.objects.get(token=token)
        auth_token.delete()  # ลบ token เพื่อออกจากระบบ
        return Response({"message": "Successfully logged out."}, status=status.HTTP_200_OK)
    except AuthToken.DoesNotExist:
        return Response({"error": "Invalid token"}, status=status.HTTP_400_BAD_REQUEST)



class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    # permission_classes = [permissions.IsAuthenticated]


class SaleViewSet(viewsets.ModelViewSet):
    queryset = Sale.objects.all()
    serializer_class = SaleSerializer

    def perform_create(self, serializer):
        sale_data = serializer.validated_data
        product = Product.objects.get(id=sale_data['product_id'])

        # ตรวจสอบว่ามี stock เพียงพอ
        if product.stock < sale_data['quantity']:
            raise serializers.ValidationError({"error": "Not enough stock available"})

        # ลด stock
        product.stock -= sale_data['quantity']
        product.save()

        serializer.save()

class StockViewSet(viewsets.ViewSet):
    permission_classes = [permissions.IsAuthenticated]

    def list(self, request):
        products = Product.objects.values('name', 'stock')
        return Response(products)
    
class BulkSaleViewSet(viewsets.ViewSet):
    def create(self, request):
        serializer = BulkSaleSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)